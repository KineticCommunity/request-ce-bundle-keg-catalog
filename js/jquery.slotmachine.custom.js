$(function(){
    $("div.slot-machine-easter-egg").on("click", function(e){
        e.preventDefault();
        $(this).remove();
        bundle = typeof bundle !== "undefined" ? bundle : {};
        bundle.slotMachine = bundle.slotMachine || {};
        bundle.slotMachine.running = false;
        bundle.slotMachine.results = new Array();
        bundle.slotMachine.container = $("div.slot-machine");
        $("section.hero div#logo a").addClass("slot-machine-background").append($("div.slot-machine"));
        bundle.slotMachine.container.slideDown(500).on("click", function(e){
            e.preventDefault();
            spinSlotMachine();
        });
        bundle.slotMachine.container.find("div.wheel > div").each(function(){
            $(this).slotMachine({
                active: 0,
                direction: 'down'
            });
        });
        window.setTimeout(function(){
            spinSlotMachine();
        }, 1000);
    });
    
    function spinSlotMachine(){
        if (!bundle.slotMachine.running){
            bundle.slotMachine.results = new Array();
            bundle.slotMachine.container.removeClass("spun").removeAttr("data-result");
            
            bundle.slotMachine.container.find("div.wheel div.first").slotMachine().shuffle(12, resolveSlotMachine);
            
            window.setTimeout(function(){
                bundle.slotMachine.container.find("div.wheel div.second").slotMachine().shuffle(15, resolveSlotMachine);
            }, 300);
            
            window.setTimeout(function(){
                bundle.slotMachine.container.find("div.wheel div.third").slotMachine().shuffle(20, resolveSlotMachine);
            }, 600);
            bundle.slotMachine.running = true;
        }
    }
    
    function resolveSlotMachine(result){
        bundle.slotMachine.results.push(result);
        if (bundle.slotMachine.results.length >= 3){
            bundle.slotMachine.container.addClass("spun");
            if (bundle.slotMachine.results[0] != 0 && bundle.slotMachine.results[0] == bundle.slotMachine.results[1] && bundle.slotMachine.results[0] == bundle.slotMachine.results[2]){
                bundle.slotMachine.container.attr("data-result", "Winner!");
                $.ajax({
                    method: "GET",
                    url: bundle.kappLocation() + "?partial=slot-machine-award.json",
                    dataType: "json",
                    contentType: "application/json",
                    success: function(data, textStatus, jqXHR){
                        console.log("SLOT MACHINE: " + data.message);
                        if (data.exception){
                            console.log("SLOT MACHINE EXCEPTION: " + data.exception);
                        }
                        if (data.points){
                            bundle.slotMachine.container.attr("data-result", "Winner! You have been awarded points!");
                        }
                        else {
                            bundle.slotMachine.container.attr("data-result", "Winner winner chicken dinner!");
                        }
                    },
                    error: function(jqXHR, textStatus, errorThrown){
                        console.log("SLOT MACHINE ERROR: " + errorThrown);
                    }
                });
            }
            else {
                bundle.slotMachine.container.attr("data-result", "Click the slot machine to spin again.");
            }
            bundle.slotMachine.running = false;
        }
    }
    
    $(window).on('resize', function(){
        $("div.slot-machine div.wheel > div").each(function(){
            $(this).slotMachine().destroy();
            $(this).slotMachine({
                active: 0,
                direction: 'down'
            });
        });
    });
});
    function create()
        strumLine2Visible = false
        strumLine1Visible = false
    end
    
    function stepHit(elapsed)

    --alice--

    if curStep == 1 or curStep == 2 or curStep == 3 or curStep == 1152 or curStep == 1536

    then
        strumLine2Visible = false
    end

    if curStep == 376 or curStep == 1400 or curStep == 1784

    then
        strumLine2Visible = true
    end


    --tweedles--
    if curStep == 384 or curStep == 640 or curStep == 1088 or curStep == 1408 or curStep == 1856 or curStep == 2112

    then
        strumLine1Visible = false
    end

    if curStep == 48 or curStep == 512 or curStep == 887 or curStep == 1152 or curStep == 1784 or curStep == 1920

    then
        strumLine1Visible = true
    end
end

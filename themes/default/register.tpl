<div class="container start-page">

    <img src="/IGOG templates/images/Ingenjorer_utan_granser_logo.png">
    <form name="registration" action="{SSLURL}register.php" method="post">
        <div>
            <label class="form-label">Name</label>
            <input type="text" name="TPL_name" <!-- IF MISSING0 eq 1 -->class="missing"<!-- ENDIF --> size=40 maxlength=255 value="{V_YNAME}" autofocus>
            <!-- IF MISSING0 eq 1 --><div class="error-box missing">{L_937}</div><!-- ENDIF -->
            <label class="form-label">E-mail</label>
            <input type="email" name="TPL_email" size=50 maxlength=50 value="{V_EMAIL}" <!-- IF MISSING4 eq 1 -->class="missing"<!-- ENDIF -->>
            <!-- IF MISSING4 eq 1 --><div class="error-box missing">{L_941}</div><!-- ENDIF -->
            <!-- IF TEL -->
            <label class="form-label">Phone number</label>
            <input type="text" name="TPL_phone" size=40 maxlength=40 value="{V_PHONE}" <!-- IF MISSING11 eq 1 -->class="missing"<!-- ENDIF -->>
            <!-- IF MISSING11 eq 1 --><div class="error-box missing">{L_947}</div><!-- ENDIF -->

            <!-- ENDIF -->
        </div>
        <div style="text-align:center">
            <input type="hidden" name="action" value="first">
            <input type="submit" name="" value="Go -->" class="button">
        </div>
    </form>


    <div style="display: none;">
        <input type="text" name="TPL_nick" size=20 maxlength=20  value="{V_UNAME}" <!-- IF MISSING1 eq 1 -->class="missing"<!-- ENDIF -->> {L_050}
        <!-- IF MISSING1 eq 1 --><div class="error-box missing">{L_938}</div><!-- ENDIF -->
    </div>


</div>
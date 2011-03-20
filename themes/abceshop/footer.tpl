{if !$content_only}
                </div> <!-- main-content -->

            </div> <!-- center_column -->



            <!-- Right -->
            <div id="right_column" class="column">

                {$HOOK_RIGHT_COLUMN}

                <div id="block-links">
                    <h4>Odkazy</h4>
                    <ul class="icon-list">
                        <li><span class="icon"></span><a href="#" title="Vyhľadávanie">Vyhľadávanie</a></li>
                        <li class="kontakt"><span class="icon"></span><a href="#" title="Kontakt">Kontakt</a></li>
                        <li class="facebook"><span class="icon"></span><a href="http://facebook.com/" title="Facebook">Facebook</a></li>
                        <li class="twitter"><span class="icon"></span><a href="http://twitter.com/" title="Twitter">Twitter</a></li>
                    </ul>
                </div>

                <div id="block-pages">
                    <h4>Informácie</h4>
                    <ul class="icon-list">
                        <li><span class="icon"></span><a href="http://localhost/abceshop.sk/www/cms.php?id_cms=9" title="Splátkový systém">Splátkový systém</a></li>
                        <li><span class="icon"></span><a href="http://localhost/abceshop.sk/www/cms.php?id_cms=8" title="Platby">Platby</a></li>
                        <li><span class="icon"></span><a href="http://localhost/abceshop.sk/www/cms.php?id_cms=7" title="Doprava">Doprava</a></li>
                        <li><span class="icon"></span><a href="http://localhost/abceshop.sk/www/cms.php?id_cms=6" title="Reklamácia">Reklamácia</a></li>
                        <li><span class="icon"></span><a href="http://localhost/abceshop.sk/www/cms.php?id_cms=3" title="Obchodné podmienky">Obchodné podmienky</a></li>
                        <li><span class="icon"></span><a href="http://localhost/abceshop.sk/www/cms.php?id_cms=4" title="O nás">O nás</a></li>
                    </ul>
                </div>
            </div> <!-- right_column -->


            <div class="clear"></div>
        </div> <!-- columns -->



        <!-- Footer -->
        <div id="footer">
            <hr />
            {$HOOK_FOOTER}
        </div> <!-- footer -->

    </div> <!-- page -->
{/if}
</body>
</html>

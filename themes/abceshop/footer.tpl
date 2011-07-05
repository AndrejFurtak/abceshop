{if !$content_only}
                </div>
                <!-- Main content -->

            </div>
            <!-- Center -->


            <!-- Right -->
            <div id="right_column" class="column">

                {$HOOK_RIGHT_COLUMN}

                <!-- Block odkazy -->
                <div id="block-links">
                    <h4>Odkazy</h4>
                    <ul class="icon-list">
                        <li><img class="icon" src="{$img_dir}icon-kontakt.jpg" width="25" height="25" alt="Ikonka." /><a href="#" title="Kontakt">Kontakt</a></li>
                        <li><img class="icon" src="{$img_dir}icon-facebook.jpg" width="25" height="25" alt="Ikonka." /><a href="http://facebook.com/" title="Facebook">Facebook</a></li>
                        <li><img class="icon" src="{$img_dir}icon-twitter.jpg" width="25" height="25" alt="Ikonka." /><a href="http://twitter.com/" title="Twitter">Twitter</a></li>
                        <li><img class="icon" src="{$img_dir}icon-splatkovy-system.jpg" width="25" height="25" alt="Ikonka." /><a href="{$base_dir}cms.php?id_cms=9" title="Splátkový systém">Splátkový systém</a></li>
                        <li><img class="icon" src="{$img_dir}icon-platby.jpg" width="25" height="25" alt="Ikonka." /><a href="{$base_dir}cms.php?id_cms=8" title="Platby">Platby</a></li>
                        <li><img class="icon" src="{$img_dir}icon-doprava.jpg" width="25" height="25" alt="Ikonka." /><a href="{$base_dir}cms.php?id_cms=7" title="Doprava">Doprava</a></li>
                        <li><img class="icon" src="{$img_dir}icon-reklamacia.jpg" width="25" height="25" alt="Ikonka." /><a href="{$base_dir}cms.php?id_cms=6" title="Reklamácia">Reklamácia</a></li>
                        <li><img class="icon" src="{$img_dir}icon-obchodne-podmienky.jpg" width="25" height="25" alt="Ikonka." /><a href="{$base_dir}cms.php?id_cms=3" title="Obchodné podmienky">Obchodné podmienky</a></li>
                        <li class="last"><img class="icon" src="{$img_dir}icon-o-nas.jpg" width="25" height="25" alt="Ikonka." /><a href="{$base_dir}?id_cms=4" title="O nás">O nás</a></li>
                    </ul>
                </div>
                <!-- Block odkazy -->

            </div>
            <!-- Right -->

            <div class="clear"></div>

        </div>
        <!-- Columns -->


        <!-- Footer -->
        <div id="footer">
            <hr />
            {$HOOK_FOOTER}
        </div>
        <!-- Footer -->

    </div>
    <!-- Page -->
{/if}
</body>
</html>

/*
Copyright (c) 2003-2011, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/

CKEDITOR.config.format_tags = 'p;h1;h2';

CKEDITOR.editorConfig = function(config)
{

    config.removePlugins = 'about,a11yhelp,bidi,blockquote,button,clipboard,dialogadvtab,' +
        'div,entities,find,flash,font,forms,iframe,justify,maximize,newpage,pagebreak,pastefromword,pastetext,' +
        'preview,print,removeformat,save,scayt,showblocks,smiley,sourcearea,tab,table,tabletools,templates,wsc';
    config.contentsCss = CKEDITOR.basePath + '../../themes/abceshop/css/default.css';
    config.docType = '<!DOCTYPE html>';
    config.toolbar = 'AbcEshop';
    config.skin = 'kama';
    config.width = 600;
    config.language = 'sk';
    config.extraPlugins = 'autogrow';
    config.autoGrow_maxHeight = 500;

    config.toolbar_AbcEshop = [
        ['Undo', 'Redo'],
        ['Format', 'Bold', 'Italic', 'Underline', 'Strike', '-', 'Subscript', 'Superscript', '-', 'TextColor'],
        ['NumberedList', 'BulletedList', 'Outdent', 'Indent'],
        ['Link','Unlink'],
        ['Image', 'SpecialChar'],
    ];

    config.filebrowserBrowseUrl = CKEDITOR.basePath + '../../kcfinder/browse.php?lang=sk&type=files';
    config.filebrowserImageBrowseUrl = CKEDITOR.basePath + '../../kcfinder/browse.php?lang=sk&type=images';
    config.filebrowserFlashBrowseUrl = CKEDITOR.basePath + '../../kcfinder/browse.php?lang=sk&type=flash';
    config.filebrowserUploadUrl = CKEDITOR.basePath + '../../kcfinder/upload.php?lang=sk&type=files';
    config.filebrowserImageUploadUrl = CKEDITOR.basePath + '../../kcfinder/upload.php?lang=sk&type=images';
    config.filebrowserFlashUploadUrl = CKEDITOR.basePath + '../../kcfinder/upload.php?lang=sk&type=flash';

};


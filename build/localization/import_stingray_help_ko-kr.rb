
ENV["SR_DOC_LANG"] = "ko-kr"
ENV["SR_DOC_LANG_AKN"] = "KOR"
ENV["SR_DOC_IMPORT_DIR"] = "..\\output\\stingray_help_ko-kr"
system("ruby ../make_docs.rb --stingray-help --launch")
system("pause")

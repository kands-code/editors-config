_rye() {
    local i cur prev opts cmd
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD - 1]}"
    cmd=""
    opts=""

    for i in ${COMP_WORDS[@]}; do
        case "${cmd},${i}" in
        ",$1")
            cmd="rye"
            ;;
        rye,add)
            cmd="rye__add"
            ;;
        rye,build)
            cmd="rye__build"
            ;;
        rye,config)
            cmd="rye__config"
            ;;
        rye,fetch)
            cmd="rye__fetch"
            ;;
        rye,fmt)
            cmd="rye__fmt"
            ;;
        rye,help)
            cmd="rye__help"
            ;;
        rye,init)
            cmd="rye__init"
            ;;
        rye,install)
            cmd="rye__install"
            ;;
        rye,lint)
            cmd="rye__lint"
            ;;
        rye,list)
            cmd="rye__list"
            ;;
        rye,lock)
            cmd="rye__lock"
            ;;
        rye,make-req)
            cmd="rye__make__req"
            ;;
        rye,pin)
            cmd="rye__pin"
            ;;
        rye,publish)
            cmd="rye__publish"
            ;;
        rye,remove)
            cmd="rye__remove"
            ;;
        rye,run)
            cmd="rye__run"
            ;;
        rye,self)
            cmd="rye__self"
            ;;
        rye,shell)
            cmd="rye__shell"
            ;;
        rye,show)
            cmd="rye__show"
            ;;
        rye,sync)
            cmd="rye__sync"
            ;;
        rye,test)
            cmd="rye__test"
            ;;
        rye,toolchain)
            cmd="rye__toolchain"
            ;;
        rye,tools)
            cmd="rye__tools"
            ;;
        rye,uninstall)
            cmd="rye__uninstall"
            ;;
        rye,version)
            cmd="rye__version"
            ;;
        rye__help,add)
            cmd="rye__help__add"
            ;;
        rye__help,build)
            cmd="rye__help__build"
            ;;
        rye__help,config)
            cmd="rye__help__config"
            ;;
        rye__help,fetch)
            cmd="rye__help__fetch"
            ;;
        rye__help,fmt)
            cmd="rye__help__fmt"
            ;;
        rye__help,help)
            cmd="rye__help__help"
            ;;
        rye__help,init)
            cmd="rye__help__init"
            ;;
        rye__help,install)
            cmd="rye__help__install"
            ;;
        rye__help,lint)
            cmd="rye__help__lint"
            ;;
        rye__help,list)
            cmd="rye__help__list"
            ;;
        rye__help,lock)
            cmd="rye__help__lock"
            ;;
        rye__help,make-req)
            cmd="rye__help__make__req"
            ;;
        rye__help,pin)
            cmd="rye__help__pin"
            ;;
        rye__help,publish)
            cmd="rye__help__publish"
            ;;
        rye__help,remove)
            cmd="rye__help__remove"
            ;;
        rye__help,run)
            cmd="rye__help__run"
            ;;
        rye__help,self)
            cmd="rye__help__self"
            ;;
        rye__help,shell)
            cmd="rye__help__shell"
            ;;
        rye__help,show)
            cmd="rye__help__show"
            ;;
        rye__help,sync)
            cmd="rye__help__sync"
            ;;
        rye__help,test)
            cmd="rye__help__test"
            ;;
        rye__help,toolchain)
            cmd="rye__help__toolchain"
            ;;
        rye__help,tools)
            cmd="rye__help__tools"
            ;;
        rye__help,uninstall)
            cmd="rye__help__uninstall"
            ;;
        rye__help,version)
            cmd="rye__help__version"
            ;;
        rye__help__self,completion)
            cmd="rye__help__self__completion"
            ;;
        rye__help__self,install)
            cmd="rye__help__self__install"
            ;;
        rye__help__self,uninstall)
            cmd="rye__help__self__uninstall"
            ;;
        rye__help__self,update)
            cmd="rye__help__self__update"
            ;;
        rye__help__toolchain,fetch)
            cmd="rye__help__toolchain__fetch"
            ;;
        rye__help__toolchain,list)
            cmd="rye__help__toolchain__list"
            ;;
        rye__help__toolchain,register)
            cmd="rye__help__toolchain__register"
            ;;
        rye__help__toolchain,remove)
            cmd="rye__help__toolchain__remove"
            ;;
        rye__help__tools,install)
            cmd="rye__help__tools__install"
            ;;
        rye__help__tools,list)
            cmd="rye__help__tools__list"
            ;;
        rye__help__tools,uninstall)
            cmd="rye__help__tools__uninstall"
            ;;
        rye__self,completion)
            cmd="rye__self__completion"
            ;;
        rye__self,help)
            cmd="rye__self__help"
            ;;
        rye__self,install)
            cmd="rye__self__install"
            ;;
        rye__self,uninstall)
            cmd="rye__self__uninstall"
            ;;
        rye__self,update)
            cmd="rye__self__update"
            ;;
        rye__self__help,completion)
            cmd="rye__self__help__completion"
            ;;
        rye__self__help,help)
            cmd="rye__self__help__help"
            ;;
        rye__self__help,install)
            cmd="rye__self__help__install"
            ;;
        rye__self__help,uninstall)
            cmd="rye__self__help__uninstall"
            ;;
        rye__self__help,update)
            cmd="rye__self__help__update"
            ;;
        rye__toolchain,fetch)
            cmd="rye__toolchain__fetch"
            ;;
        rye__toolchain,help)
            cmd="rye__toolchain__help"
            ;;
        rye__toolchain,list)
            cmd="rye__toolchain__list"
            ;;
        rye__toolchain,register)
            cmd="rye__toolchain__register"
            ;;
        rye__toolchain,remove)
            cmd="rye__toolchain__remove"
            ;;
        rye__toolchain__help,fetch)
            cmd="rye__toolchain__help__fetch"
            ;;
        rye__toolchain__help,help)
            cmd="rye__toolchain__help__help"
            ;;
        rye__toolchain__help,list)
            cmd="rye__toolchain__help__list"
            ;;
        rye__toolchain__help,register)
            cmd="rye__toolchain__help__register"
            ;;
        rye__toolchain__help,remove)
            cmd="rye__toolchain__help__remove"
            ;;
        rye__tools,help)
            cmd="rye__tools__help"
            ;;
        rye__tools,install)
            cmd="rye__tools__install"
            ;;
        rye__tools,list)
            cmd="rye__tools__list"
            ;;
        rye__tools,uninstall)
            cmd="rye__tools__uninstall"
            ;;
        rye__tools__help,help)
            cmd="rye__tools__help__help"
            ;;
        rye__tools__help,install)
            cmd="rye__tools__help__install"
            ;;
        rye__tools__help,list)
            cmd="rye__tools__help__list"
            ;;
        rye__tools__help,uninstall)
            cmd="rye__tools__help__uninstall"
            ;;
        *) ;;
        esac
    done

    case "${cmd}" in
    rye)
        opts="-h --env-file --version --help add build config fetch fmt init install lock lint make-req pin publish remove run show sync test toolchain tools self uninstall version list shell help"
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 1 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        --env-file)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__add)
        opts="-d -v -q -h --git --url --path --absolute --tag --rev --branch --features --dev --excluded --optional --pin --sync --no-sync --verbose --quiet --pre --with-sources --generate-hashes --keyring-provider --help <REQUIREMENTS>..."
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        --git)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --url)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --path)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --tag)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --rev)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --branch)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --features)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --optional)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --pin)
            COMPREPLY=($(compgen -W "equal tilde-equal greater-than-equal" -- "${cur}"))
            return 0
            ;;
        --keyring-provider)
            COMPREPLY=($(compgen -W "disabled subprocess" -- "${cur}"))
            return 0
            ;;
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__build)
        opts="-a -p -o -c -v -q -h --sdist --wheel --all --package --out --pyproject --clean --verbose --quiet --help"
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        --package)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        -p)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --out)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        -o)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --pyproject)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__config)
        opts="-h --show-path --format --get --set --set-int --set-bool --unset --help"
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        --format)
            COMPREPLY=($(compgen -W "json" -- "${cur}"))
            return 0
            ;;
        --get)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --set)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --set-int)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --set-bool)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --unset)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__fetch)
        opts="-f -v -q -h --force --target-path --build-info --no-build-info --verbose --quiet --help [VERSION]"
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        --target-path)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__fmt)
        opts="-a -p -v -q -h --all --package --pyproject --verbose --quiet --check --help [PATHS]... [EXTRA_ARGS]..."
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        --package)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        -p)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --pyproject)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__help)
        opts="add build config fetch fmt init install lock lint make-req pin publish remove run show sync test toolchain tools self uninstall version list shell help"
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__help__add)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__help__build)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__help__config)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__help__fetch)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__help__fmt)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__help__help)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__help__init)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__help__install)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__help__lint)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__help__list)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__help__lock)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__help__make__req)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__help__pin)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__help__publish)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__help__remove)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__help__run)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__help__self)
        opts="completion update install uninstall"
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__help__self__completion)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__help__self__install)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__help__self__uninstall)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__help__self__update)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__help__shell)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__help__show)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__help__sync)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__help__test)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__help__toolchain)
        opts="fetch list register remove"
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__help__toolchain__fetch)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__help__toolchain__list)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__help__toolchain__register)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__help__toolchain__remove)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__help__tools)
        opts="install uninstall list"
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__help__tools__install)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__help__tools__list)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__help__tools__uninstall)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__help__uninstall)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__help__version)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__init)
        opts="-p -r -v -q -h --lib --script --min-py --py --no-readme --no-pin --build-system --license --name --private --no-import --virtual --requirements --dev-requirements --verbose --quiet --help [PATH]"
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        --min-py)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --py)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        -p)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --build-system)
            COMPREPLY=($(compgen -W "hatchling setuptools flit pdm maturin" -- "${cur}"))
            return 0
            ;;
        --license)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --name)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --requirements)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        -r)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --dev-requirements)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__install)
        opts="-p -f -v -q -h --git --url --path --absolute --tag --rev --branch --features --include-dep --extra-requirement --python --force --keyring-provider --verbose --quiet --help <REQUIREMENT>"
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        --git)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --url)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --path)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --tag)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --rev)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --branch)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --features)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --include-dep)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --extra-requirement)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --python)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        -p)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --keyring-provider)
            COMPREPLY=($(compgen -W "disabled subprocess" -- "${cur}"))
            return 0
            ;;
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__lint)
        opts="-a -p -v -q -h --all --package --pyproject --verbose --quiet --fix --help [PATHS]... [EXTRA_ARGS]..."
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        --package)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        -p)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --pyproject)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__list)
        opts="-h --pyproject --help"
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        --pyproject)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__lock)
        opts="-v -q -h --verbose --quiet --update --update-all --pre --features --all-features --with-sources --keyring-provider --generate-hashes --universal --reset --pyproject --help"
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        --update)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --features)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --keyring-provider)
            COMPREPLY=($(compgen -W "disabled subprocess" -- "${cur}"))
            return 0
            ;;
        --pyproject)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__make__req)
        opts="-h --git --url --path --absolute --tag --rev --branch --features --help [REQUIREMENTS]..."
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        --git)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --url)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --path)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --tag)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --rev)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --branch)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --features)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__pin)
        opts="-h --relaxed --no-update-requires-python --pyproject --help <VERSION>"
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        --pyproject)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__publish)
        opts="-r -u -i -y -v -q -h --repository --repository-url --username --token --sign --identity --cert --skip-existing --yes --verbose --quiet --help [DIST]..."
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        --repository)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        -r)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --repository-url)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --username)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        -u)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --token)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --identity)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        -i)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --cert)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__remove)
        opts="-d -v -q -h --dev --optional --sync --no-sync --verbose --quiet --pre --with-sources --generate-hashes --keyring-provider --help <REQUIREMENTS>..."
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        --optional)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --keyring-provider)
            COMPREPLY=($(compgen -W "disabled subprocess" -- "${cur}"))
            return 0
            ;;
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__run)
        opts="-l -h --list --pyproject --help"
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        --pyproject)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__self)
        opts="-h --help completion update install uninstall help"
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__self__completion)
        opts="-s -h --shell --help"
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        --shell)
            COMPREPLY=($(compgen -W "bash elvish fish powershell zsh nushell" -- "${cur}"))
            return 0
            ;;
        -s)
            COMPREPLY=($(compgen -W "bash elvish fish powershell zsh nushell" -- "${cur}"))
            return 0
            ;;
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__self__help)
        opts="completion update install uninstall help"
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__self__help__completion)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__self__help__help)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__self__help__install)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__self__help__uninstall)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__self__help__update)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__self__install)
        opts="-y -h --yes --toolchain --toolchain-version --modify-path --no-modify-path --help"
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        --toolchain)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --toolchain-version)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__self__uninstall)
        opts="-y -h --yes --help"
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__self__update)
        opts="-h --version --tag --rev --branch --force --help"
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        --version)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --tag)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --rev)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --branch)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__shell)
        opts="-h --help"
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__show)
        opts="-h --installed-deps --pyproject --help"
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        --pyproject)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__sync)
        opts="-f -v -q -h --force --no-dev --no-lock --verbose --quiet --update --update-all --pre --features --all-features --with-sources --keyring-provider --generate-hashes --pyproject --reset --universal --help"
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        --update)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --features)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --keyring-provider)
            COMPREPLY=($(compgen -W "disabled subprocess" -- "${cur}"))
            return 0
            ;;
        --pyproject)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__test)
        opts="-a -p -s -v -q -h --all --package --pyproject --no-capture --verbose --quiet --pre --with-sources --generate-hashes --keyring-provider --help [EXTRA_ARGS]..."
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        --package)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        -p)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --pyproject)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --keyring-provider)
            COMPREPLY=($(compgen -W "disabled subprocess" -- "${cur}"))
            return 0
            ;;
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__toolchain)
        opts="-h --help fetch list register remove help"
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__toolchain__fetch)
        opts="-f -v -q -h --force --target-path --build-info --no-build-info --verbose --quiet --help [VERSION]"
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        --target-path)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__toolchain__help)
        opts="fetch list register remove help"
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__toolchain__help__fetch)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__toolchain__help__help)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__toolchain__help__list)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__toolchain__help__register)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__toolchain__help__remove)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__toolchain__list)
        opts="-h --include-downloadable --format --help"
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        --format)
            COMPREPLY=($(compgen -W "json" -- "${cur}"))
            return 0
            ;;
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__toolchain__register)
        opts="-n -h --name --help <PATH>"
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        --name)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        -n)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__toolchain__remove)
        opts="-f -h --force --help <VERSION>"
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__tools)
        opts="-h --help install uninstall list help"
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__tools__help)
        opts="install uninstall list help"
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__tools__help__help)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__tools__help__install)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__tools__help__list)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__tools__help__uninstall)
        opts=""
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__tools__install)
        opts="-p -f -v -q -h --git --url --path --absolute --tag --rev --branch --features --include-dep --extra-requirement --python --force --keyring-provider --verbose --quiet --help <REQUIREMENT>"
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        --git)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --url)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --path)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --tag)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --rev)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --branch)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --features)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --include-dep)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --extra-requirement)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --python)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        -p)
            COMPREPLY=($(compgen -f "${cur}"))
            return 0
            ;;
        --keyring-provider)
            COMPREPLY=($(compgen -W "disabled subprocess" -- "${cur}"))
            return 0
            ;;
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__tools__list)
        opts="-s -v -h --include-scripts --include-version --help"
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__tools__uninstall)
        opts="-v -q -h --verbose --quiet --help <NAME>"
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__uninstall)
        opts="-v -q -h --verbose --quiet --help <NAME>"
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    rye__version)
        opts="-b -h --bump --help [VERSION]"
        if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
            return 0
        fi
        case "${prev}" in
        --bump)
            COMPREPLY=($(compgen -W "major minor patch" -- "${cur}"))
            return 0
            ;;
        -b)
            COMPREPLY=($(compgen -W "major minor patch" -- "${cur}"))
            return 0
            ;;
        *)
            COMPREPLY=()
            ;;
        esac
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
        return 0
        ;;
    esac
}

if [[ "${BASH_VERSINFO[0]}" -eq 4 && "${BASH_VERSINFO[1]}" -ge 4 || "${BASH_VERSINFO[0]}" -gt 4 ]]; then
    complete -F _rye -o nosort -o bashdefault -o default rye
else
    complete -F _rye -o bashdefault -o default rye
fi

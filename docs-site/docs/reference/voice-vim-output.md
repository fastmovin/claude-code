# Voice, Vim, and output styles

**Primary paths:** `src/voice/`, `src/vim/`, `src/outputStyles/`, `src/screens/REPL.tsx` (voice hook)

Voice dictation integrates through `useVoiceIntegration` in `REPL.tsx` when the bundle includes `VOICE_MODE`. `voice/` contains mode and streaming helpers.

`vim/` implements modal editing for the prompt (motions, operators, text objects) consistent with [Interactive mode](https://code.claude.com/docs/en/interactive-mode) keyboard behavior.

`outputStyles/` adapts presentation for non-default “output styles” described in the [Output styles](https://code.claude.com/docs/en/output-styles) doc.

**See also:** [Voice dictation](https://code.claude.com/docs/en/voice-dictation), [Keybindings](https://code.claude.com/docs/en/keybindings).

module LanguageServer
  module Protocol
    module Interfaces
      class DidOpenTextDocumentParams
        def initialize(text_document:)
          @attributes = {}

          @attributes[:textDocument] = text_document

          @attributes.freeze
        end

        #
        # The document that was opened.
        #
        # @return [TextDocumentItem]
        def text_document
          attributes.fetch(:textDocument)
        end

        attr_reader :attributes

        def to_json(*args)
          attributes.to_json(*args)
        end
      end
    end
  end
end

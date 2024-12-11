module Stratosphere.QBusiness.Index.TextDocumentStatisticsProperty (
        TextDocumentStatisticsProperty(..),
        mkTextDocumentStatisticsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TextDocumentStatisticsProperty
  = TextDocumentStatisticsProperty {indexedTextBytes :: (Prelude.Maybe (Value Prelude.Double)),
                                    indexedTextDocumentCount :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTextDocumentStatisticsProperty :: TextDocumentStatisticsProperty
mkTextDocumentStatisticsProperty
  = TextDocumentStatisticsProperty
      {indexedTextBytes = Prelude.Nothing,
       indexedTextDocumentCount = Prelude.Nothing}
instance ToResourceProperties TextDocumentStatisticsProperty where
  toResourceProperties TextDocumentStatisticsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::Index.TextDocumentStatistics",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IndexedTextBytes" Prelude.<$> indexedTextBytes,
                            (JSON..=) "IndexedTextDocumentCount"
                              Prelude.<$> indexedTextDocumentCount])}
instance JSON.ToJSON TextDocumentStatisticsProperty where
  toJSON TextDocumentStatisticsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IndexedTextBytes" Prelude.<$> indexedTextBytes,
               (JSON..=) "IndexedTextDocumentCount"
                 Prelude.<$> indexedTextDocumentCount]))
instance Property "IndexedTextBytes" TextDocumentStatisticsProperty where
  type PropertyType "IndexedTextBytes" TextDocumentStatisticsProperty = Value Prelude.Double
  set newValue TextDocumentStatisticsProperty {..}
    = TextDocumentStatisticsProperty
        {indexedTextBytes = Prelude.pure newValue, ..}
instance Property "IndexedTextDocumentCount" TextDocumentStatisticsProperty where
  type PropertyType "IndexedTextDocumentCount" TextDocumentStatisticsProperty = Value Prelude.Double
  set newValue TextDocumentStatisticsProperty {..}
    = TextDocumentStatisticsProperty
        {indexedTextDocumentCount = Prelude.pure newValue, ..}
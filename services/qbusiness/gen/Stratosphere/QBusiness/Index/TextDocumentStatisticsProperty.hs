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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-index-textdocumentstatistics.html>
    TextDocumentStatisticsProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-index-textdocumentstatistics.html#cfn-qbusiness-index-textdocumentstatistics-indexedtextbytes>
                                    indexedTextBytes :: (Prelude.Maybe (Value Prelude.Double)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-index-textdocumentstatistics.html#cfn-qbusiness-index-textdocumentstatistics-indexedtextdocumentcount>
                                    indexedTextDocumentCount :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTextDocumentStatisticsProperty :: TextDocumentStatisticsProperty
mkTextDocumentStatisticsProperty
  = TextDocumentStatisticsProperty
      {haddock_workaround_ = (), indexedTextBytes = Prelude.Nothing,
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
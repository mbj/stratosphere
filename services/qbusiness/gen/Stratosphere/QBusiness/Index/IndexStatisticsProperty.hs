module Stratosphere.QBusiness.Index.IndexStatisticsProperty (
        module Exports, IndexStatisticsProperty(..),
        mkIndexStatisticsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QBusiness.Index.TextDocumentStatisticsProperty as Exports
import Stratosphere.ResourceProperties
data IndexStatisticsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-index-indexstatistics.html>
    IndexStatisticsProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-index-indexstatistics.html#cfn-qbusiness-index-indexstatistics-textdocumentstatistics>
                             textDocumentStatistics :: (Prelude.Maybe TextDocumentStatisticsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIndexStatisticsProperty :: IndexStatisticsProperty
mkIndexStatisticsProperty
  = IndexStatisticsProperty
      {haddock_workaround_ = (),
       textDocumentStatistics = Prelude.Nothing}
instance ToResourceProperties IndexStatisticsProperty where
  toResourceProperties IndexStatisticsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::Index.IndexStatistics",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TextDocumentStatistics"
                              Prelude.<$> textDocumentStatistics])}
instance JSON.ToJSON IndexStatisticsProperty where
  toJSON IndexStatisticsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TextDocumentStatistics"
                 Prelude.<$> textDocumentStatistics]))
instance Property "TextDocumentStatistics" IndexStatisticsProperty where
  type PropertyType "TextDocumentStatistics" IndexStatisticsProperty = TextDocumentStatisticsProperty
  set newValue IndexStatisticsProperty {..}
    = IndexStatisticsProperty
        {textDocumentStatistics = Prelude.pure newValue, ..}
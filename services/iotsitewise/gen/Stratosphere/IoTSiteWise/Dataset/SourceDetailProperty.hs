module Stratosphere.IoTSiteWise.Dataset.SourceDetailProperty (
        module Exports, SourceDetailProperty(..), mkSourceDetailProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTSiteWise.Dataset.KendraSourceDetailProperty as Exports
import Stratosphere.ResourceProperties
data SourceDetailProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-dataset-sourcedetail.html>
    SourceDetailProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-dataset-sourcedetail.html#cfn-iotsitewise-dataset-sourcedetail-kendra>
                          kendra :: (Prelude.Maybe KendraSourceDetailProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourceDetailProperty :: SourceDetailProperty
mkSourceDetailProperty
  = SourceDetailProperty
      {haddock_workaround_ = (), kendra = Prelude.Nothing}
instance ToResourceProperties SourceDetailProperty where
  toResourceProperties SourceDetailProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::Dataset.SourceDetail",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Kendra" Prelude.<$> kendra])}
instance JSON.ToJSON SourceDetailProperty where
  toJSON SourceDetailProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Kendra" Prelude.<$> kendra]))
instance Property "Kendra" SourceDetailProperty where
  type PropertyType "Kendra" SourceDetailProperty = KendraSourceDetailProperty
  set newValue SourceDetailProperty {..}
    = SourceDetailProperty {kendra = Prelude.pure newValue, ..}
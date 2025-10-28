module Stratosphere.MediaPackageV2.OriginEndpoint.ScteProperty (
        ScteProperty(..), mkScteProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScteProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-scte.html>
    ScteProperty {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-scte.html#cfn-mediapackagev2-originendpoint-scte-sctefilter>
                  scteFilter :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScteProperty :: ScteProperty
mkScteProperty
  = ScteProperty
      {haddock_workaround_ = (), scteFilter = Prelude.Nothing}
instance ToResourceProperties ScteProperty where
  toResourceProperties ScteProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackageV2::OriginEndpoint.Scte",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ScteFilter" Prelude.<$> scteFilter])}
instance JSON.ToJSON ScteProperty where
  toJSON ScteProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ScteFilter" Prelude.<$> scteFilter]))
instance Property "ScteFilter" ScteProperty where
  type PropertyType "ScteFilter" ScteProperty = ValueList Prelude.Text
  set newValue ScteProperty {..}
    = ScteProperty {scteFilter = Prelude.pure newValue, ..}
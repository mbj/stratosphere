module Stratosphere.SecurityHub.HubV2 (
        HubV2(..), mkHubV2
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HubV2
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securityhub-hubv2.html>
    HubV2 {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securityhub-hubv2.html#cfn-securityhub-hubv2-tags>
           tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHubV2 :: HubV2
mkHubV2 = HubV2 {haddock_workaround_ = (), tags = Prelude.Nothing}
instance ToResourceProperties HubV2 where
  toResourceProperties HubV2 {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::HubV2", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON HubV2 where
  toJSON HubV2 {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))
instance Property "Tags" HubV2 where
  type PropertyType "Tags" HubV2 = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue HubV2 {..} = HubV2 {tags = Prelude.pure newValue, ..}
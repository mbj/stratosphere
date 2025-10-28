module Stratosphere.NetworkManager.GlobalNetwork (
        GlobalNetwork(..), mkGlobalNetwork
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data GlobalNetwork
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-globalnetwork.html>
    GlobalNetwork {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-globalnetwork.html#cfn-networkmanager-globalnetwork-createdat>
                   createdAt :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-globalnetwork.html#cfn-networkmanager-globalnetwork-description>
                   description :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-globalnetwork.html#cfn-networkmanager-globalnetwork-state>
                   state :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-globalnetwork.html#cfn-networkmanager-globalnetwork-tags>
                   tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGlobalNetwork :: GlobalNetwork
mkGlobalNetwork
  = GlobalNetwork
      {haddock_workaround_ = (), createdAt = Prelude.Nothing,
       description = Prelude.Nothing, state = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties GlobalNetwork where
  toResourceProperties GlobalNetwork {..}
    = ResourceProperties
        {awsType = "AWS::NetworkManager::GlobalNetwork",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CreatedAt" Prelude.<$> createdAt,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "State" Prelude.<$> state,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON GlobalNetwork where
  toJSON GlobalNetwork {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CreatedAt" Prelude.<$> createdAt,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "State" Prelude.<$> state,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "CreatedAt" GlobalNetwork where
  type PropertyType "CreatedAt" GlobalNetwork = Value Prelude.Text
  set newValue GlobalNetwork {..}
    = GlobalNetwork {createdAt = Prelude.pure newValue, ..}
instance Property "Description" GlobalNetwork where
  type PropertyType "Description" GlobalNetwork = Value Prelude.Text
  set newValue GlobalNetwork {..}
    = GlobalNetwork {description = Prelude.pure newValue, ..}
instance Property "State" GlobalNetwork where
  type PropertyType "State" GlobalNetwork = Value Prelude.Text
  set newValue GlobalNetwork {..}
    = GlobalNetwork {state = Prelude.pure newValue, ..}
instance Property "Tags" GlobalNetwork where
  type PropertyType "Tags" GlobalNetwork = [Tag]
  set newValue GlobalNetwork {..}
    = GlobalNetwork {tags = Prelude.pure newValue, ..}
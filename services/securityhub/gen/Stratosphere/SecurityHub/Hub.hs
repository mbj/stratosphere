module Stratosphere.SecurityHub.Hub (
        Hub(..), mkHub
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Hub
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securityhub-hub.html>
    Hub {haddock_workaround_ :: (),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securityhub-hub.html#cfn-securityhub-hub-autoenablecontrols>
         autoEnableControls :: (Prelude.Maybe (Value Prelude.Bool)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securityhub-hub.html#cfn-securityhub-hub-controlfindinggenerator>
         controlFindingGenerator :: (Prelude.Maybe (Value Prelude.Text)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securityhub-hub.html#cfn-securityhub-hub-enabledefaultstandards>
         enableDefaultStandards :: (Prelude.Maybe (Value Prelude.Bool)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securityhub-hub.html#cfn-securityhub-hub-tags>
         tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHub :: Hub
mkHub
  = Hub
      {haddock_workaround_ = (), autoEnableControls = Prelude.Nothing,
       controlFindingGenerator = Prelude.Nothing,
       enableDefaultStandards = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Hub where
  toResourceProperties Hub {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::Hub", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AutoEnableControls" Prelude.<$> autoEnableControls,
                            (JSON..=) "ControlFindingGenerator"
                              Prelude.<$> controlFindingGenerator,
                            (JSON..=) "EnableDefaultStandards"
                              Prelude.<$> enableDefaultStandards,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON Hub where
  toJSON Hub {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AutoEnableControls" Prelude.<$> autoEnableControls,
               (JSON..=) "ControlFindingGenerator"
                 Prelude.<$> controlFindingGenerator,
               (JSON..=) "EnableDefaultStandards"
                 Prelude.<$> enableDefaultStandards,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "AutoEnableControls" Hub where
  type PropertyType "AutoEnableControls" Hub = Value Prelude.Bool
  set newValue Hub {..}
    = Hub {autoEnableControls = Prelude.pure newValue, ..}
instance Property "ControlFindingGenerator" Hub where
  type PropertyType "ControlFindingGenerator" Hub = Value Prelude.Text
  set newValue Hub {..}
    = Hub {controlFindingGenerator = Prelude.pure newValue, ..}
instance Property "EnableDefaultStandards" Hub where
  type PropertyType "EnableDefaultStandards" Hub = Value Prelude.Bool
  set newValue Hub {..}
    = Hub {enableDefaultStandards = Prelude.pure newValue, ..}
instance Property "Tags" Hub where
  type PropertyType "Tags" Hub = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Hub {..} = Hub {tags = Prelude.pure newValue, ..}
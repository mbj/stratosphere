module Stratosphere.MediaLive.InputSecurityGroup (
        module Exports, InputSecurityGroup(..), mkInputSecurityGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.InputSecurityGroup.InputWhitelistRuleCidrProperty as Exports
import Stratosphere.ResourceProperties
data InputSecurityGroup
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-inputsecuritygroup.html>
    InputSecurityGroup {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-inputsecuritygroup.html#cfn-medialive-inputsecuritygroup-tags>
                        tags :: (Prelude.Maybe JSON.Object),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-inputsecuritygroup.html#cfn-medialive-inputsecuritygroup-whitelistrules>
                        whitelistRules :: (Prelude.Maybe [InputWhitelistRuleCidrProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInputSecurityGroup :: InputSecurityGroup
mkInputSecurityGroup
  = InputSecurityGroup
      {haddock_workaround_ = (), tags = Prelude.Nothing,
       whitelistRules = Prelude.Nothing}
instance ToResourceProperties InputSecurityGroup where
  toResourceProperties InputSecurityGroup {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::InputSecurityGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "WhitelistRules" Prelude.<$> whitelistRules])}
instance JSON.ToJSON InputSecurityGroup where
  toJSON InputSecurityGroup {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "WhitelistRules" Prelude.<$> whitelistRules]))
instance Property "Tags" InputSecurityGroup where
  type PropertyType "Tags" InputSecurityGroup = JSON.Object
  set newValue InputSecurityGroup {..}
    = InputSecurityGroup {tags = Prelude.pure newValue, ..}
instance Property "WhitelistRules" InputSecurityGroup where
  type PropertyType "WhitelistRules" InputSecurityGroup = [InputWhitelistRuleCidrProperty]
  set newValue InputSecurityGroup {..}
    = InputSecurityGroup {whitelistRules = Prelude.pure newValue, ..}
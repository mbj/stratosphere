module Stratosphere.MediaLive.InputSecurityGroup.InputWhitelistRuleCidrProperty (
        InputWhitelistRuleCidrProperty(..),
        mkInputWhitelistRuleCidrProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InputWhitelistRuleCidrProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-inputsecuritygroup-inputwhitelistrulecidr.html>
    InputWhitelistRuleCidrProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-inputsecuritygroup-inputwhitelistrulecidr.html#cfn-medialive-inputsecuritygroup-inputwhitelistrulecidr-cidr>
                                    cidr :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInputWhitelistRuleCidrProperty :: InputWhitelistRuleCidrProperty
mkInputWhitelistRuleCidrProperty
  = InputWhitelistRuleCidrProperty
      {haddock_workaround_ = (), cidr = Prelude.Nothing}
instance ToResourceProperties InputWhitelistRuleCidrProperty where
  toResourceProperties InputWhitelistRuleCidrProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::InputSecurityGroup.InputWhitelistRuleCidr",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Cidr" Prelude.<$> cidr])}
instance JSON.ToJSON InputWhitelistRuleCidrProperty where
  toJSON InputWhitelistRuleCidrProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Cidr" Prelude.<$> cidr]))
instance Property "Cidr" InputWhitelistRuleCidrProperty where
  type PropertyType "Cidr" InputWhitelistRuleCidrProperty = Value Prelude.Text
  set newValue InputWhitelistRuleCidrProperty {..}
    = InputWhitelistRuleCidrProperty {cidr = Prelude.pure newValue, ..}
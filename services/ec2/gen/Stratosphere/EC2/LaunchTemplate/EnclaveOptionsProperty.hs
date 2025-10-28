module Stratosphere.EC2.LaunchTemplate.EnclaveOptionsProperty (
        EnclaveOptionsProperty(..), mkEnclaveOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EnclaveOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-enclaveoptions.html>
    EnclaveOptionsProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-enclaveoptions.html#cfn-ec2-launchtemplate-enclaveoptions-enabled>
                            enabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnclaveOptionsProperty :: EnclaveOptionsProperty
mkEnclaveOptionsProperty
  = EnclaveOptionsProperty
      {haddock_workaround_ = (), enabled = Prelude.Nothing}
instance ToResourceProperties EnclaveOptionsProperty where
  toResourceProperties EnclaveOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.EnclaveOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled])}
instance JSON.ToJSON EnclaveOptionsProperty where
  toJSON EnclaveOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled]))
instance Property "Enabled" EnclaveOptionsProperty where
  type PropertyType "Enabled" EnclaveOptionsProperty = Value Prelude.Bool
  set newValue EnclaveOptionsProperty {..}
    = EnclaveOptionsProperty {enabled = Prelude.pure newValue, ..}
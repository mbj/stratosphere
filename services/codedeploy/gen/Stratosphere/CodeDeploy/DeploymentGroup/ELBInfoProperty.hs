module Stratosphere.CodeDeploy.DeploymentGroup.ELBInfoProperty (
        ELBInfoProperty(..), mkELBInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ELBInfoProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-elbinfo.html>
    ELBInfoProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-elbinfo.html#cfn-codedeploy-deploymentgroup-elbinfo-name>
                     name :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkELBInfoProperty :: ELBInfoProperty
mkELBInfoProperty
  = ELBInfoProperty
      {haddock_workaround_ = (), name = Prelude.Nothing}
instance ToResourceProperties ELBInfoProperty where
  toResourceProperties ELBInfoProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeDeploy::DeploymentGroup.ELBInfo",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name])}
instance JSON.ToJSON ELBInfoProperty where
  toJSON ELBInfoProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name]))
instance Property "Name" ELBInfoProperty where
  type PropertyType "Name" ELBInfoProperty = Value Prelude.Text
  set newValue ELBInfoProperty {..}
    = ELBInfoProperty {name = Prelude.pure newValue, ..}
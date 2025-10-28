module Stratosphere.OpsWorks.Stack.StackConfigurationManagerProperty (
        StackConfigurationManagerProperty(..),
        mkStackConfigurationManagerProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StackConfigurationManagerProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-stackconfigmanager.html>
    StackConfigurationManagerProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-stackconfigmanager.html#cfn-opsworks-configmanager-name>
                                       name :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-stackconfigmanager.html#cfn-opsworks-configmanager-version>
                                       version :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStackConfigurationManagerProperty ::
  StackConfigurationManagerProperty
mkStackConfigurationManagerProperty
  = StackConfigurationManagerProperty
      {haddock_workaround_ = (), name = Prelude.Nothing,
       version = Prelude.Nothing}
instance ToResourceProperties StackConfigurationManagerProperty where
  toResourceProperties StackConfigurationManagerProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpsWorks::Stack.StackConfigurationManager",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Version" Prelude.<$> version])}
instance JSON.ToJSON StackConfigurationManagerProperty where
  toJSON StackConfigurationManagerProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Version" Prelude.<$> version]))
instance Property "Name" StackConfigurationManagerProperty where
  type PropertyType "Name" StackConfigurationManagerProperty = Value Prelude.Text
  set newValue StackConfigurationManagerProperty {..}
    = StackConfigurationManagerProperty
        {name = Prelude.pure newValue, ..}
instance Property "Version" StackConfigurationManagerProperty where
  type PropertyType "Version" StackConfigurationManagerProperty = Value Prelude.Text
  set newValue StackConfigurationManagerProperty {..}
    = StackConfigurationManagerProperty
        {version = Prelude.pure newValue, ..}
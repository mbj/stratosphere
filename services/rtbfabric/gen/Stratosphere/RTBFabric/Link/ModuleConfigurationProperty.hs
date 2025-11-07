module Stratosphere.RTBFabric.Link.ModuleConfigurationProperty (
        module Exports, ModuleConfigurationProperty(..),
        mkModuleConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.RTBFabric.Link.ModuleParametersProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ModuleConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-moduleconfiguration.html>
    ModuleConfigurationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-moduleconfiguration.html#cfn-rtbfabric-link-moduleconfiguration-dependson>
                                 dependsOn :: (Prelude.Maybe (ValueList Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-moduleconfiguration.html#cfn-rtbfabric-link-moduleconfiguration-moduleparameters>
                                 moduleParameters :: (Prelude.Maybe ModuleParametersProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-moduleconfiguration.html#cfn-rtbfabric-link-moduleconfiguration-name>
                                 name :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-moduleconfiguration.html#cfn-rtbfabric-link-moduleconfiguration-version>
                                 version :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkModuleConfigurationProperty ::
  Value Prelude.Text -> ModuleConfigurationProperty
mkModuleConfigurationProperty name
  = ModuleConfigurationProperty
      {haddock_workaround_ = (), name = name,
       dependsOn = Prelude.Nothing, moduleParameters = Prelude.Nothing,
       version = Prelude.Nothing}
instance ToResourceProperties ModuleConfigurationProperty where
  toResourceProperties ModuleConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::RTBFabric::Link.ModuleConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "DependsOn" Prelude.<$> dependsOn,
                               (JSON..=) "ModuleParameters" Prelude.<$> moduleParameters,
                               (JSON..=) "Version" Prelude.<$> version]))}
instance JSON.ToJSON ModuleConfigurationProperty where
  toJSON ModuleConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "DependsOn" Prelude.<$> dependsOn,
                  (JSON..=) "ModuleParameters" Prelude.<$> moduleParameters,
                  (JSON..=) "Version" Prelude.<$> version])))
instance Property "DependsOn" ModuleConfigurationProperty where
  type PropertyType "DependsOn" ModuleConfigurationProperty = ValueList Prelude.Text
  set newValue ModuleConfigurationProperty {..}
    = ModuleConfigurationProperty
        {dependsOn = Prelude.pure newValue, ..}
instance Property "ModuleParameters" ModuleConfigurationProperty where
  type PropertyType "ModuleParameters" ModuleConfigurationProperty = ModuleParametersProperty
  set newValue ModuleConfigurationProperty {..}
    = ModuleConfigurationProperty
        {moduleParameters = Prelude.pure newValue, ..}
instance Property "Name" ModuleConfigurationProperty where
  type PropertyType "Name" ModuleConfigurationProperty = Value Prelude.Text
  set newValue ModuleConfigurationProperty {..}
    = ModuleConfigurationProperty {name = newValue, ..}
instance Property "Version" ModuleConfigurationProperty where
  type PropertyType "Version" ModuleConfigurationProperty = Value Prelude.Text
  set newValue ModuleConfigurationProperty {..}
    = ModuleConfigurationProperty {version = Prelude.pure newValue, ..}
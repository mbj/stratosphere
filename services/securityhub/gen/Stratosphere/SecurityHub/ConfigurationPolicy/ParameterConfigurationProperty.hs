module Stratosphere.SecurityHub.ConfigurationPolicy.ParameterConfigurationProperty (
        module Exports, ParameterConfigurationProperty(..),
        mkParameterConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SecurityHub.ConfigurationPolicy.ParameterValueProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParameterConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-configurationpolicy-parameterconfiguration.html>
    ParameterConfigurationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-configurationpolicy-parameterconfiguration.html#cfn-securityhub-configurationpolicy-parameterconfiguration-value>
                                    value :: (Prelude.Maybe ParameterValueProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-configurationpolicy-parameterconfiguration.html#cfn-securityhub-configurationpolicy-parameterconfiguration-valuetype>
                                    valueType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParameterConfigurationProperty ::
  Value Prelude.Text -> ParameterConfigurationProperty
mkParameterConfigurationProperty valueType
  = ParameterConfigurationProperty
      {haddock_workaround_ = (), valueType = valueType,
       value = Prelude.Nothing}
instance ToResourceProperties ParameterConfigurationProperty where
  toResourceProperties ParameterConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::ConfigurationPolicy.ParameterConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ValueType" JSON..= valueType]
                           (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value]))}
instance JSON.ToJSON ParameterConfigurationProperty where
  toJSON ParameterConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ValueType" JSON..= valueType]
              (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value])))
instance Property "Value" ParameterConfigurationProperty where
  type PropertyType "Value" ParameterConfigurationProperty = ParameterValueProperty
  set newValue ParameterConfigurationProperty {..}
    = ParameterConfigurationProperty
        {value = Prelude.pure newValue, ..}
instance Property "ValueType" ParameterConfigurationProperty where
  type PropertyType "ValueType" ParameterConfigurationProperty = Value Prelude.Text
  set newValue ParameterConfigurationProperty {..}
    = ParameterConfigurationProperty {valueType = newValue, ..}
module Stratosphere.Connect.PredefinedAttribute.AttributeConfigurationProperty (
        AttributeConfigurationProperty(..),
        mkAttributeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AttributeConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-predefinedattribute-attributeconfiguration.html>
    AttributeConfigurationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-predefinedattribute-attributeconfiguration.html#cfn-connect-predefinedattribute-attributeconfiguration-enablevaluevalidationonassociation>
                                    enableValueValidationOnAssociation :: (Prelude.Maybe (Value Prelude.Bool)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-predefinedattribute-attributeconfiguration.html#cfn-connect-predefinedattribute-attributeconfiguration-isreadonly>
                                    isReadOnly :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAttributeConfigurationProperty :: AttributeConfigurationProperty
mkAttributeConfigurationProperty
  = AttributeConfigurationProperty
      {haddock_workaround_ = (),
       enableValueValidationOnAssociation = Prelude.Nothing,
       isReadOnly = Prelude.Nothing}
instance ToResourceProperties AttributeConfigurationProperty where
  toResourceProperties AttributeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::PredefinedAttribute.AttributeConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EnableValueValidationOnAssociation"
                              Prelude.<$> enableValueValidationOnAssociation,
                            (JSON..=) "IsReadOnly" Prelude.<$> isReadOnly])}
instance JSON.ToJSON AttributeConfigurationProperty where
  toJSON AttributeConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EnableValueValidationOnAssociation"
                 Prelude.<$> enableValueValidationOnAssociation,
               (JSON..=) "IsReadOnly" Prelude.<$> isReadOnly]))
instance Property "EnableValueValidationOnAssociation" AttributeConfigurationProperty where
  type PropertyType "EnableValueValidationOnAssociation" AttributeConfigurationProperty = Value Prelude.Bool
  set newValue AttributeConfigurationProperty {..}
    = AttributeConfigurationProperty
        {enableValueValidationOnAssociation = Prelude.pure newValue, ..}
instance Property "IsReadOnly" AttributeConfigurationProperty where
  type PropertyType "IsReadOnly" AttributeConfigurationProperty = Value Prelude.Bool
  set newValue AttributeConfigurationProperty {..}
    = AttributeConfigurationProperty
        {isReadOnly = Prelude.pure newValue, ..}
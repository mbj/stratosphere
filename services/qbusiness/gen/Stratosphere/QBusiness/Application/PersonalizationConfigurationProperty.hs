module Stratosphere.QBusiness.Application.PersonalizationConfigurationProperty (
        PersonalizationConfigurationProperty(..),
        mkPersonalizationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PersonalizationConfigurationProperty
  = PersonalizationConfigurationProperty {personalizationControlMode :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPersonalizationConfigurationProperty ::
  Value Prelude.Text -> PersonalizationConfigurationProperty
mkPersonalizationConfigurationProperty personalizationControlMode
  = PersonalizationConfigurationProperty
      {personalizationControlMode = personalizationControlMode}
instance ToResourceProperties PersonalizationConfigurationProperty where
  toResourceProperties PersonalizationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::Application.PersonalizationConfiguration",
         supportsTags = Prelude.False,
         properties = ["PersonalizationControlMode"
                         JSON..= personalizationControlMode]}
instance JSON.ToJSON PersonalizationConfigurationProperty where
  toJSON PersonalizationConfigurationProperty {..}
    = JSON.object
        ["PersonalizationControlMode" JSON..= personalizationControlMode]
instance Property "PersonalizationControlMode" PersonalizationConfigurationProperty where
  type PropertyType "PersonalizationControlMode" PersonalizationConfigurationProperty = Value Prelude.Text
  set newValue PersonalizationConfigurationProperty {}
    = PersonalizationConfigurationProperty
        {personalizationControlMode = newValue, ..}
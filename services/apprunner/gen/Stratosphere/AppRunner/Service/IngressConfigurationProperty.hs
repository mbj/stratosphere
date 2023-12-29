module Stratosphere.AppRunner.Service.IngressConfigurationProperty (
        IngressConfigurationProperty(..), mkIngressConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IngressConfigurationProperty
  = IngressConfigurationProperty {isPubliclyAccessible :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIngressConfigurationProperty ::
  Value Prelude.Bool -> IngressConfigurationProperty
mkIngressConfigurationProperty isPubliclyAccessible
  = IngressConfigurationProperty
      {isPubliclyAccessible = isPubliclyAccessible}
instance ToResourceProperties IngressConfigurationProperty where
  toResourceProperties IngressConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppRunner::Service.IngressConfiguration",
         supportsTags = Prelude.False,
         properties = ["IsPubliclyAccessible" JSON..= isPubliclyAccessible]}
instance JSON.ToJSON IngressConfigurationProperty where
  toJSON IngressConfigurationProperty {..}
    = JSON.object ["IsPubliclyAccessible" JSON..= isPubliclyAccessible]
instance Property "IsPubliclyAccessible" IngressConfigurationProperty where
  type PropertyType "IsPubliclyAccessible" IngressConfigurationProperty = Value Prelude.Bool
  set newValue IngressConfigurationProperty {}
    = IngressConfigurationProperty
        {isPubliclyAccessible = newValue, ..}
module Stratosphere.QuickSight.Template.ReferenceLineStaticDataConfigurationProperty (
        ReferenceLineStaticDataConfigurationProperty(..),
        mkReferenceLineStaticDataConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReferenceLineStaticDataConfigurationProperty
  = ReferenceLineStaticDataConfigurationProperty {value :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReferenceLineStaticDataConfigurationProperty ::
  Value Prelude.Double
  -> ReferenceLineStaticDataConfigurationProperty
mkReferenceLineStaticDataConfigurationProperty value
  = ReferenceLineStaticDataConfigurationProperty {value = value}
instance ToResourceProperties ReferenceLineStaticDataConfigurationProperty where
  toResourceProperties
    ReferenceLineStaticDataConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.ReferenceLineStaticDataConfiguration",
         supportsTags = Prelude.False, properties = ["Value" JSON..= value]}
instance JSON.ToJSON ReferenceLineStaticDataConfigurationProperty where
  toJSON ReferenceLineStaticDataConfigurationProperty {..}
    = JSON.object ["Value" JSON..= value]
instance Property "Value" ReferenceLineStaticDataConfigurationProperty where
  type PropertyType "Value" ReferenceLineStaticDataConfigurationProperty = Value Prelude.Double
  set newValue ReferenceLineStaticDataConfigurationProperty {}
    = ReferenceLineStaticDataConfigurationProperty
        {value = newValue, ..}
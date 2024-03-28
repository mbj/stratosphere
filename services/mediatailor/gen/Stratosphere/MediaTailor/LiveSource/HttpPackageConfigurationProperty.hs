module Stratosphere.MediaTailor.LiveSource.HttpPackageConfigurationProperty (
        HttpPackageConfigurationProperty(..),
        mkHttpPackageConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HttpPackageConfigurationProperty
  = HttpPackageConfigurationProperty {path :: (Value Prelude.Text),
                                      sourceGroup :: (Value Prelude.Text),
                                      type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHttpPackageConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> HttpPackageConfigurationProperty
mkHttpPackageConfigurationProperty path sourceGroup type'
  = HttpPackageConfigurationProperty
      {path = path, sourceGroup = sourceGroup, type' = type'}
instance ToResourceProperties HttpPackageConfigurationProperty where
  toResourceProperties HttpPackageConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaTailor::LiveSource.HttpPackageConfiguration",
         supportsTags = Prelude.False,
         properties = ["Path" JSON..= path,
                       "SourceGroup" JSON..= sourceGroup, "Type" JSON..= type']}
instance JSON.ToJSON HttpPackageConfigurationProperty where
  toJSON HttpPackageConfigurationProperty {..}
    = JSON.object
        ["Path" JSON..= path, "SourceGroup" JSON..= sourceGroup,
         "Type" JSON..= type']
instance Property "Path" HttpPackageConfigurationProperty where
  type PropertyType "Path" HttpPackageConfigurationProperty = Value Prelude.Text
  set newValue HttpPackageConfigurationProperty {..}
    = HttpPackageConfigurationProperty {path = newValue, ..}
instance Property "SourceGroup" HttpPackageConfigurationProperty where
  type PropertyType "SourceGroup" HttpPackageConfigurationProperty = Value Prelude.Text
  set newValue HttpPackageConfigurationProperty {..}
    = HttpPackageConfigurationProperty {sourceGroup = newValue, ..}
instance Property "Type" HttpPackageConfigurationProperty where
  type PropertyType "Type" HttpPackageConfigurationProperty = Value Prelude.Text
  set newValue HttpPackageConfigurationProperty {..}
    = HttpPackageConfigurationProperty {type' = newValue, ..}
module Stratosphere.MediaTailor.VodSource.HttpPackageConfigurationProperty (
        HttpPackageConfigurationProperty(..),
        mkHttpPackageConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HttpPackageConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-vodsource-httppackageconfiguration.html>
    HttpPackageConfigurationProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-vodsource-httppackageconfiguration.html#cfn-mediatailor-vodsource-httppackageconfiguration-path>
                                      path :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-vodsource-httppackageconfiguration.html#cfn-mediatailor-vodsource-httppackageconfiguration-sourcegroup>
                                      sourceGroup :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-vodsource-httppackageconfiguration.html#cfn-mediatailor-vodsource-httppackageconfiguration-type>
                                      type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHttpPackageConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> HttpPackageConfigurationProperty
mkHttpPackageConfigurationProperty path sourceGroup type'
  = HttpPackageConfigurationProperty
      {haddock_workaround_ = (), path = path, sourceGroup = sourceGroup,
       type' = type'}
instance ToResourceProperties HttpPackageConfigurationProperty where
  toResourceProperties HttpPackageConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaTailor::VodSource.HttpPackageConfiguration",
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
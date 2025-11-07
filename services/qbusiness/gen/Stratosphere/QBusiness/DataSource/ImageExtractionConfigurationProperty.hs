module Stratosphere.QBusiness.DataSource.ImageExtractionConfigurationProperty (
        ImageExtractionConfigurationProperty(..),
        mkImageExtractionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ImageExtractionConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-datasource-imageextractionconfiguration.html>
    ImageExtractionConfigurationProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-datasource-imageextractionconfiguration.html#cfn-qbusiness-datasource-imageextractionconfiguration-imageextractionstatus>
                                          imageExtractionStatus :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkImageExtractionConfigurationProperty ::
  Value Prelude.Text -> ImageExtractionConfigurationProperty
mkImageExtractionConfigurationProperty imageExtractionStatus
  = ImageExtractionConfigurationProperty
      {haddock_workaround_ = (),
       imageExtractionStatus = imageExtractionStatus}
instance ToResourceProperties ImageExtractionConfigurationProperty where
  toResourceProperties ImageExtractionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::DataSource.ImageExtractionConfiguration",
         supportsTags = Prelude.False,
         properties = ["ImageExtractionStatus"
                         JSON..= imageExtractionStatus]}
instance JSON.ToJSON ImageExtractionConfigurationProperty where
  toJSON ImageExtractionConfigurationProperty {..}
    = JSON.object
        ["ImageExtractionStatus" JSON..= imageExtractionStatus]
instance Property "ImageExtractionStatus" ImageExtractionConfigurationProperty where
  type PropertyType "ImageExtractionStatus" ImageExtractionConfigurationProperty = Value Prelude.Text
  set newValue ImageExtractionConfigurationProperty {..}
    = ImageExtractionConfigurationProperty
        {imageExtractionStatus = newValue, ..}
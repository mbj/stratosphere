module Stratosphere.CleanRooms.AnalysisTemplate.ErrorMessageConfigurationProperty (
        ErrorMessageConfigurationProperty(..),
        mkErrorMessageConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ErrorMessageConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-analysistemplate-errormessageconfiguration.html>
    ErrorMessageConfigurationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-analysistemplate-errormessageconfiguration.html#cfn-cleanrooms-analysistemplate-errormessageconfiguration-type>
                                       type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkErrorMessageConfigurationProperty ::
  Value Prelude.Text -> ErrorMessageConfigurationProperty
mkErrorMessageConfigurationProperty type'
  = ErrorMessageConfigurationProperty
      {haddock_workaround_ = (), type' = type'}
instance ToResourceProperties ErrorMessageConfigurationProperty where
  toResourceProperties ErrorMessageConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::AnalysisTemplate.ErrorMessageConfiguration",
         supportsTags = Prelude.False, properties = ["Type" JSON..= type']}
instance JSON.ToJSON ErrorMessageConfigurationProperty where
  toJSON ErrorMessageConfigurationProperty {..}
    = JSON.object ["Type" JSON..= type']
instance Property "Type" ErrorMessageConfigurationProperty where
  type PropertyType "Type" ErrorMessageConfigurationProperty = Value Prelude.Text
  set newValue ErrorMessageConfigurationProperty {..}
    = ErrorMessageConfigurationProperty {type' = newValue, ..}
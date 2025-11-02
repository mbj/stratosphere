module Stratosphere.SES.MailManagerRuleSet.AddHeaderActionProperty (
        AddHeaderActionProperty(..), mkAddHeaderActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AddHeaderActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-addheaderaction.html>
    AddHeaderActionProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-addheaderaction.html#cfn-ses-mailmanagerruleset-addheaderaction-headername>
                             headerName :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-addheaderaction.html#cfn-ses-mailmanagerruleset-addheaderaction-headervalue>
                             headerValue :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAddHeaderActionProperty ::
  Value Prelude.Text -> Value Prelude.Text -> AddHeaderActionProperty
mkAddHeaderActionProperty headerName headerValue
  = AddHeaderActionProperty
      {haddock_workaround_ = (), headerName = headerName,
       headerValue = headerValue}
instance ToResourceProperties AddHeaderActionProperty where
  toResourceProperties AddHeaderActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerRuleSet.AddHeaderAction",
         supportsTags = Prelude.False,
         properties = ["HeaderName" JSON..= headerName,
                       "HeaderValue" JSON..= headerValue]}
instance JSON.ToJSON AddHeaderActionProperty where
  toJSON AddHeaderActionProperty {..}
    = JSON.object
        ["HeaderName" JSON..= headerName,
         "HeaderValue" JSON..= headerValue]
instance Property "HeaderName" AddHeaderActionProperty where
  type PropertyType "HeaderName" AddHeaderActionProperty = Value Prelude.Text
  set newValue AddHeaderActionProperty {..}
    = AddHeaderActionProperty {headerName = newValue, ..}
instance Property "HeaderValue" AddHeaderActionProperty where
  type PropertyType "HeaderValue" AddHeaderActionProperty = Value Prelude.Text
  set newValue AddHeaderActionProperty {..}
    = AddHeaderActionProperty {headerValue = newValue, ..}
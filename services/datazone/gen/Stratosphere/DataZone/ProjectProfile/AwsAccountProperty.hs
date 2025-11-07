module Stratosphere.DataZone.ProjectProfile.AwsAccountProperty (
        AwsAccountProperty(..), mkAwsAccountProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AwsAccountProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-projectprofile-awsaccount.html>
    AwsAccountProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-projectprofile-awsaccount.html#cfn-datazone-projectprofile-awsaccount-awsaccountid>
                        awsAccountId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAwsAccountProperty :: Value Prelude.Text -> AwsAccountProperty
mkAwsAccountProperty awsAccountId
  = AwsAccountProperty
      {haddock_workaround_ = (), awsAccountId = awsAccountId}
instance ToResourceProperties AwsAccountProperty where
  toResourceProperties AwsAccountProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::ProjectProfile.AwsAccount",
         supportsTags = Prelude.False,
         properties = ["AwsAccountId" JSON..= awsAccountId]}
instance JSON.ToJSON AwsAccountProperty where
  toJSON AwsAccountProperty {..}
    = JSON.object ["AwsAccountId" JSON..= awsAccountId]
instance Property "AwsAccountId" AwsAccountProperty where
  type PropertyType "AwsAccountId" AwsAccountProperty = Value Prelude.Text
  set newValue AwsAccountProperty {..}
    = AwsAccountProperty {awsAccountId = newValue, ..}
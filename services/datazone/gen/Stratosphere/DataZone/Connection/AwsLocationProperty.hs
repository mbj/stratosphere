module Stratosphere.DataZone.Connection.AwsLocationProperty (
        AwsLocationProperty(..), mkAwsLocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AwsLocationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-awslocation.html>
    AwsLocationProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-awslocation.html#cfn-datazone-connection-awslocation-accessrole>
                         accessRole :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-awslocation.html#cfn-datazone-connection-awslocation-awsaccountid>
                         awsAccountId :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-awslocation.html#cfn-datazone-connection-awslocation-awsregion>
                         awsRegion :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-awslocation.html#cfn-datazone-connection-awslocation-iamconnectionid>
                         iamConnectionId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAwsLocationProperty :: AwsLocationProperty
mkAwsLocationProperty
  = AwsLocationProperty
      {haddock_workaround_ = (), accessRole = Prelude.Nothing,
       awsAccountId = Prelude.Nothing, awsRegion = Prelude.Nothing,
       iamConnectionId = Prelude.Nothing}
instance ToResourceProperties AwsLocationProperty where
  toResourceProperties AwsLocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::Connection.AwsLocation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccessRole" Prelude.<$> accessRole,
                            (JSON..=) "AwsAccountId" Prelude.<$> awsAccountId,
                            (JSON..=) "AwsRegion" Prelude.<$> awsRegion,
                            (JSON..=) "IamConnectionId" Prelude.<$> iamConnectionId])}
instance JSON.ToJSON AwsLocationProperty where
  toJSON AwsLocationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AccessRole" Prelude.<$> accessRole,
               (JSON..=) "AwsAccountId" Prelude.<$> awsAccountId,
               (JSON..=) "AwsRegion" Prelude.<$> awsRegion,
               (JSON..=) "IamConnectionId" Prelude.<$> iamConnectionId]))
instance Property "AccessRole" AwsLocationProperty where
  type PropertyType "AccessRole" AwsLocationProperty = Value Prelude.Text
  set newValue AwsLocationProperty {..}
    = AwsLocationProperty {accessRole = Prelude.pure newValue, ..}
instance Property "AwsAccountId" AwsLocationProperty where
  type PropertyType "AwsAccountId" AwsLocationProperty = Value Prelude.Text
  set newValue AwsLocationProperty {..}
    = AwsLocationProperty {awsAccountId = Prelude.pure newValue, ..}
instance Property "AwsRegion" AwsLocationProperty where
  type PropertyType "AwsRegion" AwsLocationProperty = Value Prelude.Text
  set newValue AwsLocationProperty {..}
    = AwsLocationProperty {awsRegion = Prelude.pure newValue, ..}
instance Property "IamConnectionId" AwsLocationProperty where
  type PropertyType "IamConnectionId" AwsLocationProperty = Value Prelude.Text
  set newValue AwsLocationProperty {..}
    = AwsLocationProperty {iamConnectionId = Prelude.pure newValue, ..}
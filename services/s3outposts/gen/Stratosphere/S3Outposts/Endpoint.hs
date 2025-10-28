module Stratosphere.S3Outposts.Endpoint (
        module Exports, Endpoint(..), mkEndpoint
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3Outposts.Endpoint.FailedReasonProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Endpoint
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3outposts-endpoint.html>
    Endpoint {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3outposts-endpoint.html#cfn-s3outposts-endpoint-accesstype>
              accessType :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3outposts-endpoint.html#cfn-s3outposts-endpoint-customerownedipv4pool>
              customerOwnedIpv4Pool :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3outposts-endpoint.html#cfn-s3outposts-endpoint-failedreason>
              failedReason :: (Prelude.Maybe FailedReasonProperty),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3outposts-endpoint.html#cfn-s3outposts-endpoint-outpostid>
              outpostId :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3outposts-endpoint.html#cfn-s3outposts-endpoint-securitygroupid>
              securityGroupId :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3outposts-endpoint.html#cfn-s3outposts-endpoint-subnetid>
              subnetId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEndpoint ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Endpoint
mkEndpoint outpostId securityGroupId subnetId
  = Endpoint
      {haddock_workaround_ = (), outpostId = outpostId,
       securityGroupId = securityGroupId, subnetId = subnetId,
       accessType = Prelude.Nothing,
       customerOwnedIpv4Pool = Prelude.Nothing,
       failedReason = Prelude.Nothing}
instance ToResourceProperties Endpoint where
  toResourceProperties Endpoint {..}
    = ResourceProperties
        {awsType = "AWS::S3Outposts::Endpoint",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["OutpostId" JSON..= outpostId,
                            "SecurityGroupId" JSON..= securityGroupId,
                            "SubnetId" JSON..= subnetId]
                           (Prelude.catMaybes
                              [(JSON..=) "AccessType" Prelude.<$> accessType,
                               (JSON..=) "CustomerOwnedIpv4Pool"
                                 Prelude.<$> customerOwnedIpv4Pool,
                               (JSON..=) "FailedReason" Prelude.<$> failedReason]))}
instance JSON.ToJSON Endpoint where
  toJSON Endpoint {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["OutpostId" JSON..= outpostId,
               "SecurityGroupId" JSON..= securityGroupId,
               "SubnetId" JSON..= subnetId]
              (Prelude.catMaybes
                 [(JSON..=) "AccessType" Prelude.<$> accessType,
                  (JSON..=) "CustomerOwnedIpv4Pool"
                    Prelude.<$> customerOwnedIpv4Pool,
                  (JSON..=) "FailedReason" Prelude.<$> failedReason])))
instance Property "AccessType" Endpoint where
  type PropertyType "AccessType" Endpoint = Value Prelude.Text
  set newValue Endpoint {..}
    = Endpoint {accessType = Prelude.pure newValue, ..}
instance Property "CustomerOwnedIpv4Pool" Endpoint where
  type PropertyType "CustomerOwnedIpv4Pool" Endpoint = Value Prelude.Text
  set newValue Endpoint {..}
    = Endpoint {customerOwnedIpv4Pool = Prelude.pure newValue, ..}
instance Property "FailedReason" Endpoint where
  type PropertyType "FailedReason" Endpoint = FailedReasonProperty
  set newValue Endpoint {..}
    = Endpoint {failedReason = Prelude.pure newValue, ..}
instance Property "OutpostId" Endpoint where
  type PropertyType "OutpostId" Endpoint = Value Prelude.Text
  set newValue Endpoint {..} = Endpoint {outpostId = newValue, ..}
instance Property "SecurityGroupId" Endpoint where
  type PropertyType "SecurityGroupId" Endpoint = Value Prelude.Text
  set newValue Endpoint {..}
    = Endpoint {securityGroupId = newValue, ..}
instance Property "SubnetId" Endpoint where
  type PropertyType "SubnetId" Endpoint = Value Prelude.Text
  set newValue Endpoint {..} = Endpoint {subnetId = newValue, ..}
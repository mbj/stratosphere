module Stratosphere.MPA.IdentitySource.IamIdentityCenterProperty (
        IamIdentityCenterProperty(..), mkIamIdentityCenterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IamIdentityCenterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mpa-identitysource-iamidentitycenter.html>
    IamIdentityCenterProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mpa-identitysource-iamidentitycenter.html#cfn-mpa-identitysource-iamidentitycenter-approvalportalurl>
                               approvalPortalUrl :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mpa-identitysource-iamidentitycenter.html#cfn-mpa-identitysource-iamidentitycenter-instancearn>
                               instanceArn :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mpa-identitysource-iamidentitycenter.html#cfn-mpa-identitysource-iamidentitycenter-region>
                               region :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIamIdentityCenterProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> IamIdentityCenterProperty
mkIamIdentityCenterProperty instanceArn region
  = IamIdentityCenterProperty
      {haddock_workaround_ = (), instanceArn = instanceArn,
       region = region, approvalPortalUrl = Prelude.Nothing}
instance ToResourceProperties IamIdentityCenterProperty where
  toResourceProperties IamIdentityCenterProperty {..}
    = ResourceProperties
        {awsType = "AWS::MPA::IdentitySource.IamIdentityCenter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InstanceArn" JSON..= instanceArn, "Region" JSON..= region]
                           (Prelude.catMaybes
                              [(JSON..=) "ApprovalPortalUrl" Prelude.<$> approvalPortalUrl]))}
instance JSON.ToJSON IamIdentityCenterProperty where
  toJSON IamIdentityCenterProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InstanceArn" JSON..= instanceArn, "Region" JSON..= region]
              (Prelude.catMaybes
                 [(JSON..=) "ApprovalPortalUrl" Prelude.<$> approvalPortalUrl])))
instance Property "ApprovalPortalUrl" IamIdentityCenterProperty where
  type PropertyType "ApprovalPortalUrl" IamIdentityCenterProperty = Value Prelude.Text
  set newValue IamIdentityCenterProperty {..}
    = IamIdentityCenterProperty
        {approvalPortalUrl = Prelude.pure newValue, ..}
instance Property "InstanceArn" IamIdentityCenterProperty where
  type PropertyType "InstanceArn" IamIdentityCenterProperty = Value Prelude.Text
  set newValue IamIdentityCenterProperty {..}
    = IamIdentityCenterProperty {instanceArn = newValue, ..}
instance Property "Region" IamIdentityCenterProperty where
  type PropertyType "Region" IamIdentityCenterProperty = Value Prelude.Text
  set newValue IamIdentityCenterProperty {..}
    = IamIdentityCenterProperty {region = newValue, ..}
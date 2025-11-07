module Stratosphere.CleanRooms.Membership.MembershipProtectedJobOutputConfigurationProperty (
        module Exports,
        MembershipProtectedJobOutputConfigurationProperty(..),
        mkMembershipProtectedJobOutputConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRooms.Membership.ProtectedJobS3OutputConfigurationInputProperty as Exports
import Stratosphere.ResourceProperties
data MembershipProtectedJobOutputConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-membership-membershipprotectedjoboutputconfiguration.html>
    MembershipProtectedJobOutputConfigurationProperty {haddock_workaround_ :: (),
                                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-membership-membershipprotectedjoboutputconfiguration.html#cfn-cleanrooms-membership-membershipprotectedjoboutputconfiguration-s3>
                                                       s3 :: ProtectedJobS3OutputConfigurationInputProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMembershipProtectedJobOutputConfigurationProperty ::
  ProtectedJobS3OutputConfigurationInputProperty
  -> MembershipProtectedJobOutputConfigurationProperty
mkMembershipProtectedJobOutputConfigurationProperty s3
  = MembershipProtectedJobOutputConfigurationProperty
      {haddock_workaround_ = (), s3 = s3}
instance ToResourceProperties MembershipProtectedJobOutputConfigurationProperty where
  toResourceProperties
    MembershipProtectedJobOutputConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::Membership.MembershipProtectedJobOutputConfiguration",
         supportsTags = Prelude.False, properties = ["S3" JSON..= s3]}
instance JSON.ToJSON MembershipProtectedJobOutputConfigurationProperty where
  toJSON MembershipProtectedJobOutputConfigurationProperty {..}
    = JSON.object ["S3" JSON..= s3]
instance Property "S3" MembershipProtectedJobOutputConfigurationProperty where
  type PropertyType "S3" MembershipProtectedJobOutputConfigurationProperty = ProtectedJobS3OutputConfigurationInputProperty
  set newValue MembershipProtectedJobOutputConfigurationProperty {..}
    = MembershipProtectedJobOutputConfigurationProperty
        {s3 = newValue, ..}
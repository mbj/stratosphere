module Stratosphere.CleanRooms.Membership.MembershipProtectedQueryOutputConfigurationProperty (
        module Exports,
        MembershipProtectedQueryOutputConfigurationProperty(..),
        mkMembershipProtectedQueryOutputConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRooms.Membership.ProtectedQueryS3OutputConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data MembershipProtectedQueryOutputConfigurationProperty
  = MembershipProtectedQueryOutputConfigurationProperty {s3 :: ProtectedQueryS3OutputConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMembershipProtectedQueryOutputConfigurationProperty ::
  ProtectedQueryS3OutputConfigurationProperty
  -> MembershipProtectedQueryOutputConfigurationProperty
mkMembershipProtectedQueryOutputConfigurationProperty s3
  = MembershipProtectedQueryOutputConfigurationProperty {s3 = s3}
instance ToResourceProperties MembershipProtectedQueryOutputConfigurationProperty where
  toResourceProperties
    MembershipProtectedQueryOutputConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::Membership.MembershipProtectedQueryOutputConfiguration",
         supportsTags = Prelude.False, properties = ["S3" JSON..= s3]}
instance JSON.ToJSON MembershipProtectedQueryOutputConfigurationProperty where
  toJSON MembershipProtectedQueryOutputConfigurationProperty {..}
    = JSON.object ["S3" JSON..= s3]
instance Property "S3" MembershipProtectedQueryOutputConfigurationProperty where
  type PropertyType "S3" MembershipProtectedQueryOutputConfigurationProperty = ProtectedQueryS3OutputConfigurationProperty
  set newValue MembershipProtectedQueryOutputConfigurationProperty {}
    = MembershipProtectedQueryOutputConfigurationProperty
        {s3 = newValue, ..}
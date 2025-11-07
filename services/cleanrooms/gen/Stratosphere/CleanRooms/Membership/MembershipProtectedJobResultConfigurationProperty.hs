module Stratosphere.CleanRooms.Membership.MembershipProtectedJobResultConfigurationProperty (
        module Exports,
        MembershipProtectedJobResultConfigurationProperty(..),
        mkMembershipProtectedJobResultConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRooms.Membership.MembershipProtectedJobOutputConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MembershipProtectedJobResultConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-membership-membershipprotectedjobresultconfiguration.html>
    MembershipProtectedJobResultConfigurationProperty {haddock_workaround_ :: (),
                                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-membership-membershipprotectedjobresultconfiguration.html#cfn-cleanrooms-membership-membershipprotectedjobresultconfiguration-outputconfiguration>
                                                       outputConfiguration :: MembershipProtectedJobOutputConfigurationProperty,
                                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-membership-membershipprotectedjobresultconfiguration.html#cfn-cleanrooms-membership-membershipprotectedjobresultconfiguration-rolearn>
                                                       roleArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMembershipProtectedJobResultConfigurationProperty ::
  MembershipProtectedJobOutputConfigurationProperty
  -> Value Prelude.Text
     -> MembershipProtectedJobResultConfigurationProperty
mkMembershipProtectedJobResultConfigurationProperty
  outputConfiguration
  roleArn
  = MembershipProtectedJobResultConfigurationProperty
      {haddock_workaround_ = (),
       outputConfiguration = outputConfiguration, roleArn = roleArn}
instance ToResourceProperties MembershipProtectedJobResultConfigurationProperty where
  toResourceProperties
    MembershipProtectedJobResultConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::Membership.MembershipProtectedJobResultConfiguration",
         supportsTags = Prelude.False,
         properties = ["OutputConfiguration" JSON..= outputConfiguration,
                       "RoleArn" JSON..= roleArn]}
instance JSON.ToJSON MembershipProtectedJobResultConfigurationProperty where
  toJSON MembershipProtectedJobResultConfigurationProperty {..}
    = JSON.object
        ["OutputConfiguration" JSON..= outputConfiguration,
         "RoleArn" JSON..= roleArn]
instance Property "OutputConfiguration" MembershipProtectedJobResultConfigurationProperty where
  type PropertyType "OutputConfiguration" MembershipProtectedJobResultConfigurationProperty = MembershipProtectedJobOutputConfigurationProperty
  set newValue MembershipProtectedJobResultConfigurationProperty {..}
    = MembershipProtectedJobResultConfigurationProperty
        {outputConfiguration = newValue, ..}
instance Property "RoleArn" MembershipProtectedJobResultConfigurationProperty where
  type PropertyType "RoleArn" MembershipProtectedJobResultConfigurationProperty = Value Prelude.Text
  set newValue MembershipProtectedJobResultConfigurationProperty {..}
    = MembershipProtectedJobResultConfigurationProperty
        {roleArn = newValue, ..}
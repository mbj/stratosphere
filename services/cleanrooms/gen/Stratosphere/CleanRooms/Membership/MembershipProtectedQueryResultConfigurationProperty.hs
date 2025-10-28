module Stratosphere.CleanRooms.Membership.MembershipProtectedQueryResultConfigurationProperty (
        module Exports,
        MembershipProtectedQueryResultConfigurationProperty(..),
        mkMembershipProtectedQueryResultConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRooms.Membership.MembershipProtectedQueryOutputConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MembershipProtectedQueryResultConfigurationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-membership-membershipprotectedqueryresultconfiguration.html>
    MembershipProtectedQueryResultConfigurationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-membership-membershipprotectedqueryresultconfiguration.html#cfn-cleanrooms-membership-membershipprotectedqueryresultconfiguration-outputconfiguration>
                                                         outputConfiguration :: MembershipProtectedQueryOutputConfigurationProperty,
                                                         -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-membership-membershipprotectedqueryresultconfiguration.html#cfn-cleanrooms-membership-membershipprotectedqueryresultconfiguration-rolearn>
                                                         roleArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMembershipProtectedQueryResultConfigurationProperty ::
  MembershipProtectedQueryOutputConfigurationProperty
  -> MembershipProtectedQueryResultConfigurationProperty
mkMembershipProtectedQueryResultConfigurationProperty
  outputConfiguration
  = MembershipProtectedQueryResultConfigurationProperty
      {outputConfiguration = outputConfiguration,
       roleArn = Prelude.Nothing}
instance ToResourceProperties MembershipProtectedQueryResultConfigurationProperty where
  toResourceProperties
    MembershipProtectedQueryResultConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::Membership.MembershipProtectedQueryResultConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["OutputConfiguration" JSON..= outputConfiguration]
                           (Prelude.catMaybes [(JSON..=) "RoleArn" Prelude.<$> roleArn]))}
instance JSON.ToJSON MembershipProtectedQueryResultConfigurationProperty where
  toJSON MembershipProtectedQueryResultConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["OutputConfiguration" JSON..= outputConfiguration]
              (Prelude.catMaybes [(JSON..=) "RoleArn" Prelude.<$> roleArn])))
instance Property "OutputConfiguration" MembershipProtectedQueryResultConfigurationProperty where
  type PropertyType "OutputConfiguration" MembershipProtectedQueryResultConfigurationProperty = MembershipProtectedQueryOutputConfigurationProperty
  set
    newValue
    MembershipProtectedQueryResultConfigurationProperty {..}
    = MembershipProtectedQueryResultConfigurationProperty
        {outputConfiguration = newValue, ..}
instance Property "RoleArn" MembershipProtectedQueryResultConfigurationProperty where
  type PropertyType "RoleArn" MembershipProtectedQueryResultConfigurationProperty = Value Prelude.Text
  set
    newValue
    MembershipProtectedQueryResultConfigurationProperty {..}
    = MembershipProtectedQueryResultConfigurationProperty
        {roleArn = Prelude.pure newValue, ..}
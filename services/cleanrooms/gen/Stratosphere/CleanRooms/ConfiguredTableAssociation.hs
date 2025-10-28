module Stratosphere.CleanRooms.ConfiguredTableAssociation (
        module Exports, ConfiguredTableAssociation(..),
        mkConfiguredTableAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRooms.ConfiguredTableAssociation.ConfiguredTableAssociationAnalysisRuleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ConfiguredTableAssociation
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-configuredtableassociation.html>
    ConfiguredTableAssociation {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-configuredtableassociation.html#cfn-cleanrooms-configuredtableassociation-configuredtableassociationanalysisrules>
                                configuredTableAssociationAnalysisRules :: (Prelude.Maybe [ConfiguredTableAssociationAnalysisRuleProperty]),
                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-configuredtableassociation.html#cfn-cleanrooms-configuredtableassociation-configuredtableidentifier>
                                configuredTableIdentifier :: (Value Prelude.Text),
                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-configuredtableassociation.html#cfn-cleanrooms-configuredtableassociation-description>
                                description :: (Prelude.Maybe (Value Prelude.Text)),
                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-configuredtableassociation.html#cfn-cleanrooms-configuredtableassociation-membershipidentifier>
                                membershipIdentifier :: (Value Prelude.Text),
                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-configuredtableassociation.html#cfn-cleanrooms-configuredtableassociation-name>
                                name :: (Value Prelude.Text),
                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-configuredtableassociation.html#cfn-cleanrooms-configuredtableassociation-rolearn>
                                roleArn :: (Value Prelude.Text),
                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-configuredtableassociation.html#cfn-cleanrooms-configuredtableassociation-tags>
                                tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfiguredTableAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> ConfiguredTableAssociation
mkConfiguredTableAssociation
  configuredTableIdentifier
  membershipIdentifier
  name
  roleArn
  = ConfiguredTableAssociation
      {configuredTableIdentifier = configuredTableIdentifier,
       membershipIdentifier = membershipIdentifier, name = name,
       roleArn = roleArn,
       configuredTableAssociationAnalysisRules = Prelude.Nothing,
       description = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ConfiguredTableAssociation where
  toResourceProperties ConfiguredTableAssociation {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::ConfiguredTableAssociation",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConfiguredTableIdentifier" JSON..= configuredTableIdentifier,
                            "MembershipIdentifier" JSON..= membershipIdentifier,
                            "Name" JSON..= name, "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "ConfiguredTableAssociationAnalysisRules"
                                 Prelude.<$> configuredTableAssociationAnalysisRules,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ConfiguredTableAssociation where
  toJSON ConfiguredTableAssociation {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConfiguredTableIdentifier" JSON..= configuredTableIdentifier,
               "MembershipIdentifier" JSON..= membershipIdentifier,
               "Name" JSON..= name, "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "ConfiguredTableAssociationAnalysisRules"
                    Prelude.<$> configuredTableAssociationAnalysisRules,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ConfiguredTableAssociationAnalysisRules" ConfiguredTableAssociation where
  type PropertyType "ConfiguredTableAssociationAnalysisRules" ConfiguredTableAssociation = [ConfiguredTableAssociationAnalysisRuleProperty]
  set newValue ConfiguredTableAssociation {..}
    = ConfiguredTableAssociation
        {configuredTableAssociationAnalysisRules = Prelude.pure newValue,
         ..}
instance Property "ConfiguredTableIdentifier" ConfiguredTableAssociation where
  type PropertyType "ConfiguredTableIdentifier" ConfiguredTableAssociation = Value Prelude.Text
  set newValue ConfiguredTableAssociation {..}
    = ConfiguredTableAssociation
        {configuredTableIdentifier = newValue, ..}
instance Property "Description" ConfiguredTableAssociation where
  type PropertyType "Description" ConfiguredTableAssociation = Value Prelude.Text
  set newValue ConfiguredTableAssociation {..}
    = ConfiguredTableAssociation
        {description = Prelude.pure newValue, ..}
instance Property "MembershipIdentifier" ConfiguredTableAssociation where
  type PropertyType "MembershipIdentifier" ConfiguredTableAssociation = Value Prelude.Text
  set newValue ConfiguredTableAssociation {..}
    = ConfiguredTableAssociation {membershipIdentifier = newValue, ..}
instance Property "Name" ConfiguredTableAssociation where
  type PropertyType "Name" ConfiguredTableAssociation = Value Prelude.Text
  set newValue ConfiguredTableAssociation {..}
    = ConfiguredTableAssociation {name = newValue, ..}
instance Property "RoleArn" ConfiguredTableAssociation where
  type PropertyType "RoleArn" ConfiguredTableAssociation = Value Prelude.Text
  set newValue ConfiguredTableAssociation {..}
    = ConfiguredTableAssociation {roleArn = newValue, ..}
instance Property "Tags" ConfiguredTableAssociation where
  type PropertyType "Tags" ConfiguredTableAssociation = [Tag]
  set newValue ConfiguredTableAssociation {..}
    = ConfiguredTableAssociation {tags = Prelude.pure newValue, ..}
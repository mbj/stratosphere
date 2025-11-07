module Stratosphere.CleanRooms.Collaboration (
        module Exports, Collaboration(..), mkCollaboration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRooms.Collaboration.DataEncryptionMetadataProperty as Exports
import {-# SOURCE #-} Stratosphere.CleanRooms.Collaboration.MLMemberAbilitiesProperty as Exports
import {-# SOURCE #-} Stratosphere.CleanRooms.Collaboration.MemberSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.CleanRooms.Collaboration.PaymentConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Collaboration
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-collaboration.html>
    Collaboration {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-collaboration.html#cfn-cleanrooms-collaboration-analyticsengine>
                   analyticsEngine :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-collaboration.html#cfn-cleanrooms-collaboration-autoapprovedchangetypes>
                   autoApprovedChangeTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-collaboration.html#cfn-cleanrooms-collaboration-creatordisplayname>
                   creatorDisplayName :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-collaboration.html#cfn-cleanrooms-collaboration-creatormlmemberabilities>
                   creatorMLMemberAbilities :: (Prelude.Maybe MLMemberAbilitiesProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-collaboration.html#cfn-cleanrooms-collaboration-creatormemberabilities>
                   creatorMemberAbilities :: (Prelude.Maybe (ValueList Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-collaboration.html#cfn-cleanrooms-collaboration-creatorpaymentconfiguration>
                   creatorPaymentConfiguration :: (Prelude.Maybe PaymentConfigurationProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-collaboration.html#cfn-cleanrooms-collaboration-dataencryptionmetadata>
                   dataEncryptionMetadata :: (Prelude.Maybe DataEncryptionMetadataProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-collaboration.html#cfn-cleanrooms-collaboration-description>
                   description :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-collaboration.html#cfn-cleanrooms-collaboration-joblogstatus>
                   jobLogStatus :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-collaboration.html#cfn-cleanrooms-collaboration-members>
                   members :: (Prelude.Maybe [MemberSpecificationProperty]),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-collaboration.html#cfn-cleanrooms-collaboration-name>
                   name :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-collaboration.html#cfn-cleanrooms-collaboration-querylogstatus>
                   queryLogStatus :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-collaboration.html#cfn-cleanrooms-collaboration-tags>
                   tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCollaboration ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> Collaboration
mkCollaboration creatorDisplayName description name queryLogStatus
  = Collaboration
      {haddock_workaround_ = (), creatorDisplayName = creatorDisplayName,
       description = description, name = name,
       queryLogStatus = queryLogStatus, analyticsEngine = Prelude.Nothing,
       autoApprovedChangeTypes = Prelude.Nothing,
       creatorMLMemberAbilities = Prelude.Nothing,
       creatorMemberAbilities = Prelude.Nothing,
       creatorPaymentConfiguration = Prelude.Nothing,
       dataEncryptionMetadata = Prelude.Nothing,
       jobLogStatus = Prelude.Nothing, members = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Collaboration where
  toResourceProperties Collaboration {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::Collaboration",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CreatorDisplayName" JSON..= creatorDisplayName,
                            "Description" JSON..= description, "Name" JSON..= name,
                            "QueryLogStatus" JSON..= queryLogStatus]
                           (Prelude.catMaybes
                              [(JSON..=) "AnalyticsEngine" Prelude.<$> analyticsEngine,
                               (JSON..=) "AutoApprovedChangeTypes"
                                 Prelude.<$> autoApprovedChangeTypes,
                               (JSON..=) "CreatorMLMemberAbilities"
                                 Prelude.<$> creatorMLMemberAbilities,
                               (JSON..=) "CreatorMemberAbilities"
                                 Prelude.<$> creatorMemberAbilities,
                               (JSON..=) "CreatorPaymentConfiguration"
                                 Prelude.<$> creatorPaymentConfiguration,
                               (JSON..=) "DataEncryptionMetadata"
                                 Prelude.<$> dataEncryptionMetadata,
                               (JSON..=) "JobLogStatus" Prelude.<$> jobLogStatus,
                               (JSON..=) "Members" Prelude.<$> members,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Collaboration where
  toJSON Collaboration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CreatorDisplayName" JSON..= creatorDisplayName,
               "Description" JSON..= description, "Name" JSON..= name,
               "QueryLogStatus" JSON..= queryLogStatus]
              (Prelude.catMaybes
                 [(JSON..=) "AnalyticsEngine" Prelude.<$> analyticsEngine,
                  (JSON..=) "AutoApprovedChangeTypes"
                    Prelude.<$> autoApprovedChangeTypes,
                  (JSON..=) "CreatorMLMemberAbilities"
                    Prelude.<$> creatorMLMemberAbilities,
                  (JSON..=) "CreatorMemberAbilities"
                    Prelude.<$> creatorMemberAbilities,
                  (JSON..=) "CreatorPaymentConfiguration"
                    Prelude.<$> creatorPaymentConfiguration,
                  (JSON..=) "DataEncryptionMetadata"
                    Prelude.<$> dataEncryptionMetadata,
                  (JSON..=) "JobLogStatus" Prelude.<$> jobLogStatus,
                  (JSON..=) "Members" Prelude.<$> members,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AnalyticsEngine" Collaboration where
  type PropertyType "AnalyticsEngine" Collaboration = Value Prelude.Text
  set newValue Collaboration {..}
    = Collaboration {analyticsEngine = Prelude.pure newValue, ..}
instance Property "AutoApprovedChangeTypes" Collaboration where
  type PropertyType "AutoApprovedChangeTypes" Collaboration = ValueList Prelude.Text
  set newValue Collaboration {..}
    = Collaboration
        {autoApprovedChangeTypes = Prelude.pure newValue, ..}
instance Property "CreatorDisplayName" Collaboration where
  type PropertyType "CreatorDisplayName" Collaboration = Value Prelude.Text
  set newValue Collaboration {..}
    = Collaboration {creatorDisplayName = newValue, ..}
instance Property "CreatorMLMemberAbilities" Collaboration where
  type PropertyType "CreatorMLMemberAbilities" Collaboration = MLMemberAbilitiesProperty
  set newValue Collaboration {..}
    = Collaboration
        {creatorMLMemberAbilities = Prelude.pure newValue, ..}
instance Property "CreatorMemberAbilities" Collaboration where
  type PropertyType "CreatorMemberAbilities" Collaboration = ValueList Prelude.Text
  set newValue Collaboration {..}
    = Collaboration
        {creatorMemberAbilities = Prelude.pure newValue, ..}
instance Property "CreatorPaymentConfiguration" Collaboration where
  type PropertyType "CreatorPaymentConfiguration" Collaboration = PaymentConfigurationProperty
  set newValue Collaboration {..}
    = Collaboration
        {creatorPaymentConfiguration = Prelude.pure newValue, ..}
instance Property "DataEncryptionMetadata" Collaboration where
  type PropertyType "DataEncryptionMetadata" Collaboration = DataEncryptionMetadataProperty
  set newValue Collaboration {..}
    = Collaboration
        {dataEncryptionMetadata = Prelude.pure newValue, ..}
instance Property "Description" Collaboration where
  type PropertyType "Description" Collaboration = Value Prelude.Text
  set newValue Collaboration {..}
    = Collaboration {description = newValue, ..}
instance Property "JobLogStatus" Collaboration where
  type PropertyType "JobLogStatus" Collaboration = Value Prelude.Text
  set newValue Collaboration {..}
    = Collaboration {jobLogStatus = Prelude.pure newValue, ..}
instance Property "Members" Collaboration where
  type PropertyType "Members" Collaboration = [MemberSpecificationProperty]
  set newValue Collaboration {..}
    = Collaboration {members = Prelude.pure newValue, ..}
instance Property "Name" Collaboration where
  type PropertyType "Name" Collaboration = Value Prelude.Text
  set newValue Collaboration {..}
    = Collaboration {name = newValue, ..}
instance Property "QueryLogStatus" Collaboration where
  type PropertyType "QueryLogStatus" Collaboration = Value Prelude.Text
  set newValue Collaboration {..}
    = Collaboration {queryLogStatus = newValue, ..}
instance Property "Tags" Collaboration where
  type PropertyType "Tags" Collaboration = [Tag]
  set newValue Collaboration {..}
    = Collaboration {tags = Prelude.pure newValue, ..}
module Stratosphere.CleanRooms.Collaboration (
        module Exports, Collaboration(..), mkCollaboration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRooms.Collaboration.DataEncryptionMetadataProperty as Exports
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
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-collaboration.html#cfn-cleanrooms-collaboration-creatordisplayname>
                   creatorDisplayName :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-collaboration.html#cfn-cleanrooms-collaboration-creatormemberabilities>
                   creatorMemberAbilities :: (ValueList Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-collaboration.html#cfn-cleanrooms-collaboration-creatorpaymentconfiguration>
                   creatorPaymentConfiguration :: (Prelude.Maybe PaymentConfigurationProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-collaboration.html#cfn-cleanrooms-collaboration-dataencryptionmetadata>
                   dataEncryptionMetadata :: (Prelude.Maybe DataEncryptionMetadataProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-collaboration.html#cfn-cleanrooms-collaboration-description>
                   description :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-collaboration.html#cfn-cleanrooms-collaboration-members>
                   members :: [MemberSpecificationProperty],
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-collaboration.html#cfn-cleanrooms-collaboration-name>
                   name :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-collaboration.html#cfn-cleanrooms-collaboration-querylogstatus>
                   queryLogStatus :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-collaboration.html#cfn-cleanrooms-collaboration-tags>
                   tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCollaboration ::
  Value Prelude.Text
  -> ValueList Prelude.Text
     -> Value Prelude.Text
        -> [MemberSpecificationProperty]
           -> Value Prelude.Text -> Value Prelude.Text -> Collaboration
mkCollaboration
  creatorDisplayName
  creatorMemberAbilities
  description
  members
  name
  queryLogStatus
  = Collaboration
      {haddock_workaround_ = (), creatorDisplayName = creatorDisplayName,
       creatorMemberAbilities = creatorMemberAbilities,
       description = description, members = members, name = name,
       queryLogStatus = queryLogStatus, analyticsEngine = Prelude.Nothing,
       creatorPaymentConfiguration = Prelude.Nothing,
       dataEncryptionMetadata = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Collaboration where
  toResourceProperties Collaboration {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::Collaboration",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CreatorDisplayName" JSON..= creatorDisplayName,
                            "CreatorMemberAbilities" JSON..= creatorMemberAbilities,
                            "Description" JSON..= description, "Members" JSON..= members,
                            "Name" JSON..= name, "QueryLogStatus" JSON..= queryLogStatus]
                           (Prelude.catMaybes
                              [(JSON..=) "AnalyticsEngine" Prelude.<$> analyticsEngine,
                               (JSON..=) "CreatorPaymentConfiguration"
                                 Prelude.<$> creatorPaymentConfiguration,
                               (JSON..=) "DataEncryptionMetadata"
                                 Prelude.<$> dataEncryptionMetadata,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Collaboration where
  toJSON Collaboration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CreatorDisplayName" JSON..= creatorDisplayName,
               "CreatorMemberAbilities" JSON..= creatorMemberAbilities,
               "Description" JSON..= description, "Members" JSON..= members,
               "Name" JSON..= name, "QueryLogStatus" JSON..= queryLogStatus]
              (Prelude.catMaybes
                 [(JSON..=) "AnalyticsEngine" Prelude.<$> analyticsEngine,
                  (JSON..=) "CreatorPaymentConfiguration"
                    Prelude.<$> creatorPaymentConfiguration,
                  (JSON..=) "DataEncryptionMetadata"
                    Prelude.<$> dataEncryptionMetadata,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AnalyticsEngine" Collaboration where
  type PropertyType "AnalyticsEngine" Collaboration = Value Prelude.Text
  set newValue Collaboration {..}
    = Collaboration {analyticsEngine = Prelude.pure newValue, ..}
instance Property "CreatorDisplayName" Collaboration where
  type PropertyType "CreatorDisplayName" Collaboration = Value Prelude.Text
  set newValue Collaboration {..}
    = Collaboration {creatorDisplayName = newValue, ..}
instance Property "CreatorMemberAbilities" Collaboration where
  type PropertyType "CreatorMemberAbilities" Collaboration = ValueList Prelude.Text
  set newValue Collaboration {..}
    = Collaboration {creatorMemberAbilities = newValue, ..}
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
instance Property "Members" Collaboration where
  type PropertyType "Members" Collaboration = [MemberSpecificationProperty]
  set newValue Collaboration {..}
    = Collaboration {members = newValue, ..}
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
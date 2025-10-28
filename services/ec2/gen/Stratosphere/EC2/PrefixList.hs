module Stratosphere.EC2.PrefixList (
        module Exports, PrefixList(..), mkPrefixList
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.PrefixList.EntryProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data PrefixList
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-prefixlist.html>
    PrefixList {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-prefixlist.html#cfn-ec2-prefixlist-addressfamily>
                addressFamily :: (Value Prelude.Text),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-prefixlist.html#cfn-ec2-prefixlist-entries>
                entries :: (Prelude.Maybe [EntryProperty]),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-prefixlist.html#cfn-ec2-prefixlist-maxentries>
                maxEntries :: (Prelude.Maybe (Value Prelude.Integer)),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-prefixlist.html#cfn-ec2-prefixlist-prefixlistname>
                prefixListName :: (Value Prelude.Text),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-prefixlist.html#cfn-ec2-prefixlist-tags>
                tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPrefixList ::
  Value Prelude.Text -> Value Prelude.Text -> PrefixList
mkPrefixList addressFamily prefixListName
  = PrefixList
      {addressFamily = addressFamily, prefixListName = prefixListName,
       entries = Prelude.Nothing, maxEntries = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties PrefixList where
  toResourceProperties PrefixList {..}
    = ResourceProperties
        {awsType = "AWS::EC2::PrefixList", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AddressFamily" JSON..= addressFamily,
                            "PrefixListName" JSON..= prefixListName]
                           (Prelude.catMaybes
                              [(JSON..=) "Entries" Prelude.<$> entries,
                               (JSON..=) "MaxEntries" Prelude.<$> maxEntries,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON PrefixList where
  toJSON PrefixList {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AddressFamily" JSON..= addressFamily,
               "PrefixListName" JSON..= prefixListName]
              (Prelude.catMaybes
                 [(JSON..=) "Entries" Prelude.<$> entries,
                  (JSON..=) "MaxEntries" Prelude.<$> maxEntries,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AddressFamily" PrefixList where
  type PropertyType "AddressFamily" PrefixList = Value Prelude.Text
  set newValue PrefixList {..}
    = PrefixList {addressFamily = newValue, ..}
instance Property "Entries" PrefixList where
  type PropertyType "Entries" PrefixList = [EntryProperty]
  set newValue PrefixList {..}
    = PrefixList {entries = Prelude.pure newValue, ..}
instance Property "MaxEntries" PrefixList where
  type PropertyType "MaxEntries" PrefixList = Value Prelude.Integer
  set newValue PrefixList {..}
    = PrefixList {maxEntries = Prelude.pure newValue, ..}
instance Property "PrefixListName" PrefixList where
  type PropertyType "PrefixListName" PrefixList = Value Prelude.Text
  set newValue PrefixList {..}
    = PrefixList {prefixListName = newValue, ..}
instance Property "Tags" PrefixList where
  type PropertyType "Tags" PrefixList = [Tag]
  set newValue PrefixList {..}
    = PrefixList {tags = Prelude.pure newValue, ..}
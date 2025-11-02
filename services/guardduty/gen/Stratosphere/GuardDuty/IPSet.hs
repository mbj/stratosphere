module Stratosphere.GuardDuty.IPSet (
        module Exports, IPSet(..), mkIPSet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GuardDuty.IPSet.TagItemProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IPSet
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-ipset.html>
    IPSet {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-ipset.html#cfn-guardduty-ipset-activate>
           activate :: (Prelude.Maybe (Value Prelude.Bool)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-ipset.html#cfn-guardduty-ipset-detectorid>
           detectorId :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-ipset.html#cfn-guardduty-ipset-format>
           format :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-ipset.html#cfn-guardduty-ipset-location>
           location :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-ipset.html#cfn-guardduty-ipset-name>
           name :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-ipset.html#cfn-guardduty-ipset-tags>
           tags :: (Prelude.Maybe [TagItemProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIPSet :: Value Prelude.Text -> Value Prelude.Text -> IPSet
mkIPSet format location
  = IPSet
      {haddock_workaround_ = (), format = format, location = location,
       activate = Prelude.Nothing, detectorId = Prelude.Nothing,
       name = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties IPSet where
  toResourceProperties IPSet {..}
    = ResourceProperties
        {awsType = "AWS::GuardDuty::IPSet", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Format" JSON..= format, "Location" JSON..= location]
                           (Prelude.catMaybes
                              [(JSON..=) "Activate" Prelude.<$> activate,
                               (JSON..=) "DetectorId" Prelude.<$> detectorId,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON IPSet where
  toJSON IPSet {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Format" JSON..= format, "Location" JSON..= location]
              (Prelude.catMaybes
                 [(JSON..=) "Activate" Prelude.<$> activate,
                  (JSON..=) "DetectorId" Prelude.<$> detectorId,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Activate" IPSet where
  type PropertyType "Activate" IPSet = Value Prelude.Bool
  set newValue IPSet {..}
    = IPSet {activate = Prelude.pure newValue, ..}
instance Property "DetectorId" IPSet where
  type PropertyType "DetectorId" IPSet = Value Prelude.Text
  set newValue IPSet {..}
    = IPSet {detectorId = Prelude.pure newValue, ..}
instance Property "Format" IPSet where
  type PropertyType "Format" IPSet = Value Prelude.Text
  set newValue IPSet {..} = IPSet {format = newValue, ..}
instance Property "Location" IPSet where
  type PropertyType "Location" IPSet = Value Prelude.Text
  set newValue IPSet {..} = IPSet {location = newValue, ..}
instance Property "Name" IPSet where
  type PropertyType "Name" IPSet = Value Prelude.Text
  set newValue IPSet {..} = IPSet {name = Prelude.pure newValue, ..}
instance Property "Tags" IPSet where
  type PropertyType "Tags" IPSet = [TagItemProperty]
  set newValue IPSet {..} = IPSet {tags = Prelude.pure newValue, ..}
module Stratosphere.Route53RecoveryReadiness.ResourceSet.R53ResourceRecordProperty (
        R53ResourceRecordProperty(..), mkR53ResourceRecordProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data R53ResourceRecordProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53recoveryreadiness-resourceset-r53resourcerecord.html>
    R53ResourceRecordProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53recoveryreadiness-resourceset-r53resourcerecord.html#cfn-route53recoveryreadiness-resourceset-r53resourcerecord-domainname>
                               domainName :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53recoveryreadiness-resourceset-r53resourcerecord.html#cfn-route53recoveryreadiness-resourceset-r53resourcerecord-recordsetid>
                               recordSetId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkR53ResourceRecordProperty :: R53ResourceRecordProperty
mkR53ResourceRecordProperty
  = R53ResourceRecordProperty
      {haddock_workaround_ = (), domainName = Prelude.Nothing,
       recordSetId = Prelude.Nothing}
instance ToResourceProperties R53ResourceRecordProperty where
  toResourceProperties R53ResourceRecordProperty {..}
    = ResourceProperties
        {awsType = "AWS::Route53RecoveryReadiness::ResourceSet.R53ResourceRecord",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DomainName" Prelude.<$> domainName,
                            (JSON..=) "RecordSetId" Prelude.<$> recordSetId])}
instance JSON.ToJSON R53ResourceRecordProperty where
  toJSON R53ResourceRecordProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DomainName" Prelude.<$> domainName,
               (JSON..=) "RecordSetId" Prelude.<$> recordSetId]))
instance Property "DomainName" R53ResourceRecordProperty where
  type PropertyType "DomainName" R53ResourceRecordProperty = Value Prelude.Text
  set newValue R53ResourceRecordProperty {..}
    = R53ResourceRecordProperty
        {domainName = Prelude.pure newValue, ..}
instance Property "RecordSetId" R53ResourceRecordProperty where
  type PropertyType "RecordSetId" R53ResourceRecordProperty = Value Prelude.Text
  set newValue R53ResourceRecordProperty {..}
    = R53ResourceRecordProperty
        {recordSetId = Prelude.pure newValue, ..}
module Stratosphere.DataZone.Domain.SingleSignOnProperty (
        SingleSignOnProperty(..), mkSingleSignOnProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SingleSignOnProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-domain-singlesignon.html>
    SingleSignOnProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-domain-singlesignon.html#cfn-datazone-domain-singlesignon-idcinstancearn>
                          idcInstanceArn :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-domain-singlesignon.html#cfn-datazone-domain-singlesignon-type>
                          type' :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-domain-singlesignon.html#cfn-datazone-domain-singlesignon-userassignment>
                          userAssignment :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSingleSignOnProperty :: SingleSignOnProperty
mkSingleSignOnProperty
  = SingleSignOnProperty
      {haddock_workaround_ = (), idcInstanceArn = Prelude.Nothing,
       type' = Prelude.Nothing, userAssignment = Prelude.Nothing}
instance ToResourceProperties SingleSignOnProperty where
  toResourceProperties SingleSignOnProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::Domain.SingleSignOn",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IdcInstanceArn" Prelude.<$> idcInstanceArn,
                            (JSON..=) "Type" Prelude.<$> type',
                            (JSON..=) "UserAssignment" Prelude.<$> userAssignment])}
instance JSON.ToJSON SingleSignOnProperty where
  toJSON SingleSignOnProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IdcInstanceArn" Prelude.<$> idcInstanceArn,
               (JSON..=) "Type" Prelude.<$> type',
               (JSON..=) "UserAssignment" Prelude.<$> userAssignment]))
instance Property "IdcInstanceArn" SingleSignOnProperty where
  type PropertyType "IdcInstanceArn" SingleSignOnProperty = Value Prelude.Text
  set newValue SingleSignOnProperty {..}
    = SingleSignOnProperty {idcInstanceArn = Prelude.pure newValue, ..}
instance Property "Type" SingleSignOnProperty where
  type PropertyType "Type" SingleSignOnProperty = Value Prelude.Text
  set newValue SingleSignOnProperty {..}
    = SingleSignOnProperty {type' = Prelude.pure newValue, ..}
instance Property "UserAssignment" SingleSignOnProperty where
  type PropertyType "UserAssignment" SingleSignOnProperty = Value Prelude.Text
  set newValue SingleSignOnProperty {..}
    = SingleSignOnProperty {userAssignment = Prelude.pure newValue, ..}
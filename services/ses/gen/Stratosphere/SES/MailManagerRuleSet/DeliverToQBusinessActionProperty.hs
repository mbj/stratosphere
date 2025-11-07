module Stratosphere.SES.MailManagerRuleSet.DeliverToQBusinessActionProperty (
        DeliverToQBusinessActionProperty(..),
        mkDeliverToQBusinessActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeliverToQBusinessActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-delivertoqbusinessaction.html>
    DeliverToQBusinessActionProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-delivertoqbusinessaction.html#cfn-ses-mailmanagerruleset-delivertoqbusinessaction-actionfailurepolicy>
                                      actionFailurePolicy :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-delivertoqbusinessaction.html#cfn-ses-mailmanagerruleset-delivertoqbusinessaction-applicationid>
                                      applicationId :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-delivertoqbusinessaction.html#cfn-ses-mailmanagerruleset-delivertoqbusinessaction-indexid>
                                      indexId :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-delivertoqbusinessaction.html#cfn-ses-mailmanagerruleset-delivertoqbusinessaction-rolearn>
                                      roleArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeliverToQBusinessActionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> DeliverToQBusinessActionProperty
mkDeliverToQBusinessActionProperty applicationId indexId roleArn
  = DeliverToQBusinessActionProperty
      {haddock_workaround_ = (), applicationId = applicationId,
       indexId = indexId, roleArn = roleArn,
       actionFailurePolicy = Prelude.Nothing}
instance ToResourceProperties DeliverToQBusinessActionProperty where
  toResourceProperties DeliverToQBusinessActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerRuleSet.DeliverToQBusinessAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApplicationId" JSON..= applicationId, "IndexId" JSON..= indexId,
                            "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "ActionFailurePolicy"
                                 Prelude.<$> actionFailurePolicy]))}
instance JSON.ToJSON DeliverToQBusinessActionProperty where
  toJSON DeliverToQBusinessActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApplicationId" JSON..= applicationId, "IndexId" JSON..= indexId,
               "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "ActionFailurePolicy"
                    Prelude.<$> actionFailurePolicy])))
instance Property "ActionFailurePolicy" DeliverToQBusinessActionProperty where
  type PropertyType "ActionFailurePolicy" DeliverToQBusinessActionProperty = Value Prelude.Text
  set newValue DeliverToQBusinessActionProperty {..}
    = DeliverToQBusinessActionProperty
        {actionFailurePolicy = Prelude.pure newValue, ..}
instance Property "ApplicationId" DeliverToQBusinessActionProperty where
  type PropertyType "ApplicationId" DeliverToQBusinessActionProperty = Value Prelude.Text
  set newValue DeliverToQBusinessActionProperty {..}
    = DeliverToQBusinessActionProperty {applicationId = newValue, ..}
instance Property "IndexId" DeliverToQBusinessActionProperty where
  type PropertyType "IndexId" DeliverToQBusinessActionProperty = Value Prelude.Text
  set newValue DeliverToQBusinessActionProperty {..}
    = DeliverToQBusinessActionProperty {indexId = newValue, ..}
instance Property "RoleArn" DeliverToQBusinessActionProperty where
  type PropertyType "RoleArn" DeliverToQBusinessActionProperty = Value Prelude.Text
  set newValue DeliverToQBusinessActionProperty {..}
    = DeliverToQBusinessActionProperty {roleArn = newValue, ..}
module Stratosphere.ResilienceHub.App.PhysicalResourceIdProperty (
        PhysicalResourceIdProperty(..), mkPhysicalResourceIdProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PhysicalResourceIdProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resiliencehub-app-physicalresourceid.html>
    PhysicalResourceIdProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resiliencehub-app-physicalresourceid.html#cfn-resiliencehub-app-physicalresourceid-awsaccountid>
                                awsAccountId :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resiliencehub-app-physicalresourceid.html#cfn-resiliencehub-app-physicalresourceid-awsregion>
                                awsRegion :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resiliencehub-app-physicalresourceid.html#cfn-resiliencehub-app-physicalresourceid-identifier>
                                identifier :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resiliencehub-app-physicalresourceid.html#cfn-resiliencehub-app-physicalresourceid-type>
                                type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPhysicalResourceIdProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> PhysicalResourceIdProperty
mkPhysicalResourceIdProperty identifier type'
  = PhysicalResourceIdProperty
      {haddock_workaround_ = (), identifier = identifier, type' = type',
       awsAccountId = Prelude.Nothing, awsRegion = Prelude.Nothing}
instance ToResourceProperties PhysicalResourceIdProperty where
  toResourceProperties PhysicalResourceIdProperty {..}
    = ResourceProperties
        {awsType = "AWS::ResilienceHub::App.PhysicalResourceId",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Identifier" JSON..= identifier, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "AwsAccountId" Prelude.<$> awsAccountId,
                               (JSON..=) "AwsRegion" Prelude.<$> awsRegion]))}
instance JSON.ToJSON PhysicalResourceIdProperty where
  toJSON PhysicalResourceIdProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Identifier" JSON..= identifier, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "AwsAccountId" Prelude.<$> awsAccountId,
                  (JSON..=) "AwsRegion" Prelude.<$> awsRegion])))
instance Property "AwsAccountId" PhysicalResourceIdProperty where
  type PropertyType "AwsAccountId" PhysicalResourceIdProperty = Value Prelude.Text
  set newValue PhysicalResourceIdProperty {..}
    = PhysicalResourceIdProperty
        {awsAccountId = Prelude.pure newValue, ..}
instance Property "AwsRegion" PhysicalResourceIdProperty where
  type PropertyType "AwsRegion" PhysicalResourceIdProperty = Value Prelude.Text
  set newValue PhysicalResourceIdProperty {..}
    = PhysicalResourceIdProperty
        {awsRegion = Prelude.pure newValue, ..}
instance Property "Identifier" PhysicalResourceIdProperty where
  type PropertyType "Identifier" PhysicalResourceIdProperty = Value Prelude.Text
  set newValue PhysicalResourceIdProperty {..}
    = PhysicalResourceIdProperty {identifier = newValue, ..}
instance Property "Type" PhysicalResourceIdProperty where
  type PropertyType "Type" PhysicalResourceIdProperty = Value Prelude.Text
  set newValue PhysicalResourceIdProperty {..}
    = PhysicalResourceIdProperty {type' = newValue, ..}
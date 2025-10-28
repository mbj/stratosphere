module Stratosphere.CloudFront.Distribution.FunctionAssociationProperty (
        FunctionAssociationProperty(..), mkFunctionAssociationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FunctionAssociationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-functionassociation.html>
    FunctionAssociationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-functionassociation.html#cfn-cloudfront-distribution-functionassociation-eventtype>
                                 eventType :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-functionassociation.html#cfn-cloudfront-distribution-functionassociation-functionarn>
                                 functionARN :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFunctionAssociationProperty :: FunctionAssociationProperty
mkFunctionAssociationProperty
  = FunctionAssociationProperty
      {haddock_workaround_ = (), eventType = Prelude.Nothing,
       functionARN = Prelude.Nothing}
instance ToResourceProperties FunctionAssociationProperty where
  toResourceProperties FunctionAssociationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::Distribution.FunctionAssociation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EventType" Prelude.<$> eventType,
                            (JSON..=) "FunctionARN" Prelude.<$> functionARN])}
instance JSON.ToJSON FunctionAssociationProperty where
  toJSON FunctionAssociationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EventType" Prelude.<$> eventType,
               (JSON..=) "FunctionARN" Prelude.<$> functionARN]))
instance Property "EventType" FunctionAssociationProperty where
  type PropertyType "EventType" FunctionAssociationProperty = Value Prelude.Text
  set newValue FunctionAssociationProperty {..}
    = FunctionAssociationProperty
        {eventType = Prelude.pure newValue, ..}
instance Property "FunctionARN" FunctionAssociationProperty where
  type PropertyType "FunctionARN" FunctionAssociationProperty = Value Prelude.Text
  set newValue FunctionAssociationProperty {..}
    = FunctionAssociationProperty
        {functionARN = Prelude.pure newValue, ..}
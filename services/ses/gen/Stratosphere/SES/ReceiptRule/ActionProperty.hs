module Stratosphere.SES.ReceiptRule.ActionProperty (
        module Exports, ActionProperty(..), mkActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.ReceiptRule.AddHeaderActionProperty as Exports
import {-# SOURCE #-} Stratosphere.SES.ReceiptRule.BounceActionProperty as Exports
import {-# SOURCE #-} Stratosphere.SES.ReceiptRule.LambdaActionProperty as Exports
import {-# SOURCE #-} Stratosphere.SES.ReceiptRule.S3ActionProperty as Exports
import {-# SOURCE #-} Stratosphere.SES.ReceiptRule.SNSActionProperty as Exports
import {-# SOURCE #-} Stratosphere.SES.ReceiptRule.StopActionProperty as Exports
import {-# SOURCE #-} Stratosphere.SES.ReceiptRule.WorkmailActionProperty as Exports
import Stratosphere.ResourceProperties
data ActionProperty
  = ActionProperty {addHeaderAction :: (Prelude.Maybe AddHeaderActionProperty),
                    bounceAction :: (Prelude.Maybe BounceActionProperty),
                    lambdaAction :: (Prelude.Maybe LambdaActionProperty),
                    s3Action :: (Prelude.Maybe S3ActionProperty),
                    sNSAction :: (Prelude.Maybe SNSActionProperty),
                    stopAction :: (Prelude.Maybe StopActionProperty),
                    workmailAction :: (Prelude.Maybe WorkmailActionProperty)}
mkActionProperty :: ActionProperty
mkActionProperty
  = ActionProperty
      {addHeaderAction = Prelude.Nothing, bounceAction = Prelude.Nothing,
       lambdaAction = Prelude.Nothing, s3Action = Prelude.Nothing,
       sNSAction = Prelude.Nothing, stopAction = Prelude.Nothing,
       workmailAction = Prelude.Nothing}
instance ToResourceProperties ActionProperty where
  toResourceProperties ActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::ReceiptRule.Action",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AddHeaderAction" Prelude.<$> addHeaderAction,
                            (JSON..=) "BounceAction" Prelude.<$> bounceAction,
                            (JSON..=) "LambdaAction" Prelude.<$> lambdaAction,
                            (JSON..=) "S3Action" Prelude.<$> s3Action,
                            (JSON..=) "SNSAction" Prelude.<$> sNSAction,
                            (JSON..=) "StopAction" Prelude.<$> stopAction,
                            (JSON..=) "WorkmailAction" Prelude.<$> workmailAction])}
instance JSON.ToJSON ActionProperty where
  toJSON ActionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AddHeaderAction" Prelude.<$> addHeaderAction,
               (JSON..=) "BounceAction" Prelude.<$> bounceAction,
               (JSON..=) "LambdaAction" Prelude.<$> lambdaAction,
               (JSON..=) "S3Action" Prelude.<$> s3Action,
               (JSON..=) "SNSAction" Prelude.<$> sNSAction,
               (JSON..=) "StopAction" Prelude.<$> stopAction,
               (JSON..=) "WorkmailAction" Prelude.<$> workmailAction]))
instance Property "AddHeaderAction" ActionProperty where
  type PropertyType "AddHeaderAction" ActionProperty = AddHeaderActionProperty
  set newValue ActionProperty {..}
    = ActionProperty {addHeaderAction = Prelude.pure newValue, ..}
instance Property "BounceAction" ActionProperty where
  type PropertyType "BounceAction" ActionProperty = BounceActionProperty
  set newValue ActionProperty {..}
    = ActionProperty {bounceAction = Prelude.pure newValue, ..}
instance Property "LambdaAction" ActionProperty where
  type PropertyType "LambdaAction" ActionProperty = LambdaActionProperty
  set newValue ActionProperty {..}
    = ActionProperty {lambdaAction = Prelude.pure newValue, ..}
instance Property "S3Action" ActionProperty where
  type PropertyType "S3Action" ActionProperty = S3ActionProperty
  set newValue ActionProperty {..}
    = ActionProperty {s3Action = Prelude.pure newValue, ..}
instance Property "SNSAction" ActionProperty where
  type PropertyType "SNSAction" ActionProperty = SNSActionProperty
  set newValue ActionProperty {..}
    = ActionProperty {sNSAction = Prelude.pure newValue, ..}
instance Property "StopAction" ActionProperty where
  type PropertyType "StopAction" ActionProperty = StopActionProperty
  set newValue ActionProperty {..}
    = ActionProperty {stopAction = Prelude.pure newValue, ..}
instance Property "WorkmailAction" ActionProperty where
  type PropertyType "WorkmailAction" ActionProperty = WorkmailActionProperty
  set newValue ActionProperty {..}
    = ActionProperty {workmailAction = Prelude.pure newValue, ..}
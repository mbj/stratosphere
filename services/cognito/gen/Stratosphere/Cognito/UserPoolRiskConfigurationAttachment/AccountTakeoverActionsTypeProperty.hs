module Stratosphere.Cognito.UserPoolRiskConfigurationAttachment.AccountTakeoverActionsTypeProperty (
        module Exports, AccountTakeoverActionsTypeProperty(..),
        mkAccountTakeoverActionsTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Cognito.UserPoolRiskConfigurationAttachment.AccountTakeoverActionTypeProperty as Exports
import Stratosphere.ResourceProperties
data AccountTakeoverActionsTypeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoveractionstype.html>
    AccountTakeoverActionsTypeProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoveractionstype.html#cfn-cognito-userpoolriskconfigurationattachment-accounttakeoveractionstype-highaction>
                                        highAction :: (Prelude.Maybe AccountTakeoverActionTypeProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoveractionstype.html#cfn-cognito-userpoolriskconfigurationattachment-accounttakeoveractionstype-lowaction>
                                        lowAction :: (Prelude.Maybe AccountTakeoverActionTypeProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoveractionstype.html#cfn-cognito-userpoolriskconfigurationattachment-accounttakeoveractionstype-mediumaction>
                                        mediumAction :: (Prelude.Maybe AccountTakeoverActionTypeProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccountTakeoverActionsTypeProperty ::
  AccountTakeoverActionsTypeProperty
mkAccountTakeoverActionsTypeProperty
  = AccountTakeoverActionsTypeProperty
      {haddock_workaround_ = (), highAction = Prelude.Nothing,
       lowAction = Prelude.Nothing, mediumAction = Prelude.Nothing}
instance ToResourceProperties AccountTakeoverActionsTypeProperty where
  toResourceProperties AccountTakeoverActionsTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPoolRiskConfigurationAttachment.AccountTakeoverActionsType",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HighAction" Prelude.<$> highAction,
                            (JSON..=) "LowAction" Prelude.<$> lowAction,
                            (JSON..=) "MediumAction" Prelude.<$> mediumAction])}
instance JSON.ToJSON AccountTakeoverActionsTypeProperty where
  toJSON AccountTakeoverActionsTypeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HighAction" Prelude.<$> highAction,
               (JSON..=) "LowAction" Prelude.<$> lowAction,
               (JSON..=) "MediumAction" Prelude.<$> mediumAction]))
instance Property "HighAction" AccountTakeoverActionsTypeProperty where
  type PropertyType "HighAction" AccountTakeoverActionsTypeProperty = AccountTakeoverActionTypeProperty
  set newValue AccountTakeoverActionsTypeProperty {..}
    = AccountTakeoverActionsTypeProperty
        {highAction = Prelude.pure newValue, ..}
instance Property "LowAction" AccountTakeoverActionsTypeProperty where
  type PropertyType "LowAction" AccountTakeoverActionsTypeProperty = AccountTakeoverActionTypeProperty
  set newValue AccountTakeoverActionsTypeProperty {..}
    = AccountTakeoverActionsTypeProperty
        {lowAction = Prelude.pure newValue, ..}
instance Property "MediumAction" AccountTakeoverActionsTypeProperty where
  type PropertyType "MediumAction" AccountTakeoverActionsTypeProperty = AccountTakeoverActionTypeProperty
  set newValue AccountTakeoverActionsTypeProperty {..}
    = AccountTakeoverActionsTypeProperty
        {mediumAction = Prelude.pure newValue, ..}
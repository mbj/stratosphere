module Stratosphere.CleanRooms.PrivacyBudgetTemplate (
        module Exports, PrivacyBudgetTemplate(..), mkPrivacyBudgetTemplate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRooms.PrivacyBudgetTemplate.ParametersProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data PrivacyBudgetTemplate
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-privacybudgettemplate.html>
    PrivacyBudgetTemplate {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-privacybudgettemplate.html#cfn-cleanrooms-privacybudgettemplate-autorefresh>
                           autoRefresh :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-privacybudgettemplate.html#cfn-cleanrooms-privacybudgettemplate-membershipidentifier>
                           membershipIdentifier :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-privacybudgettemplate.html#cfn-cleanrooms-privacybudgettemplate-parameters>
                           parameters :: ParametersProperty,
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-privacybudgettemplate.html#cfn-cleanrooms-privacybudgettemplate-privacybudgettype>
                           privacyBudgetType :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-privacybudgettemplate.html#cfn-cleanrooms-privacybudgettemplate-tags>
                           tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPrivacyBudgetTemplate ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> ParametersProperty
        -> Value Prelude.Text -> PrivacyBudgetTemplate
mkPrivacyBudgetTemplate
  autoRefresh
  membershipIdentifier
  parameters
  privacyBudgetType
  = PrivacyBudgetTemplate
      {haddock_workaround_ = (), autoRefresh = autoRefresh,
       membershipIdentifier = membershipIdentifier,
       parameters = parameters, privacyBudgetType = privacyBudgetType,
       tags = Prelude.Nothing}
instance ToResourceProperties PrivacyBudgetTemplate where
  toResourceProperties PrivacyBudgetTemplate {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::PrivacyBudgetTemplate",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AutoRefresh" JSON..= autoRefresh,
                            "MembershipIdentifier" JSON..= membershipIdentifier,
                            "Parameters" JSON..= parameters,
                            "PrivacyBudgetType" JSON..= privacyBudgetType]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON PrivacyBudgetTemplate where
  toJSON PrivacyBudgetTemplate {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AutoRefresh" JSON..= autoRefresh,
               "MembershipIdentifier" JSON..= membershipIdentifier,
               "Parameters" JSON..= parameters,
               "PrivacyBudgetType" JSON..= privacyBudgetType]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AutoRefresh" PrivacyBudgetTemplate where
  type PropertyType "AutoRefresh" PrivacyBudgetTemplate = Value Prelude.Text
  set newValue PrivacyBudgetTemplate {..}
    = PrivacyBudgetTemplate {autoRefresh = newValue, ..}
instance Property "MembershipIdentifier" PrivacyBudgetTemplate where
  type PropertyType "MembershipIdentifier" PrivacyBudgetTemplate = Value Prelude.Text
  set newValue PrivacyBudgetTemplate {..}
    = PrivacyBudgetTemplate {membershipIdentifier = newValue, ..}
instance Property "Parameters" PrivacyBudgetTemplate where
  type PropertyType "Parameters" PrivacyBudgetTemplate = ParametersProperty
  set newValue PrivacyBudgetTemplate {..}
    = PrivacyBudgetTemplate {parameters = newValue, ..}
instance Property "PrivacyBudgetType" PrivacyBudgetTemplate where
  type PropertyType "PrivacyBudgetType" PrivacyBudgetTemplate = Value Prelude.Text
  set newValue PrivacyBudgetTemplate {..}
    = PrivacyBudgetTemplate {privacyBudgetType = newValue, ..}
instance Property "Tags" PrivacyBudgetTemplate where
  type PropertyType "Tags" PrivacyBudgetTemplate = [Tag]
  set newValue PrivacyBudgetTemplate {..}
    = PrivacyBudgetTemplate {tags = Prelude.pure newValue, ..}
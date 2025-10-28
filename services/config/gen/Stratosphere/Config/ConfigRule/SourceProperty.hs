module Stratosphere.Config.ConfigRule.SourceProperty (
        module Exports, SourceProperty(..), mkSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Config.ConfigRule.CustomPolicyDetailsProperty as Exports
import {-# SOURCE #-} Stratosphere.Config.ConfigRule.SourceDetailProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SourceProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-source.html>
    SourceProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-source.html#cfn-config-configrule-source-custompolicydetails>
                    customPolicyDetails :: (Prelude.Maybe CustomPolicyDetailsProperty),
                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-source.html#cfn-config-configrule-source-owner>
                    owner :: (Value Prelude.Text),
                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-source.html#cfn-config-configrule-source-sourcedetails>
                    sourceDetails :: (Prelude.Maybe [SourceDetailProperty]),
                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-source.html#cfn-config-configrule-source-sourceidentifier>
                    sourceIdentifier :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourceProperty :: Value Prelude.Text -> SourceProperty
mkSourceProperty owner
  = SourceProperty
      {owner = owner, customPolicyDetails = Prelude.Nothing,
       sourceDetails = Prelude.Nothing,
       sourceIdentifier = Prelude.Nothing}
instance ToResourceProperties SourceProperty where
  toResourceProperties SourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::Config::ConfigRule.Source",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Owner" JSON..= owner]
                           (Prelude.catMaybes
                              [(JSON..=) "CustomPolicyDetails" Prelude.<$> customPolicyDetails,
                               (JSON..=) "SourceDetails" Prelude.<$> sourceDetails,
                               (JSON..=) "SourceIdentifier" Prelude.<$> sourceIdentifier]))}
instance JSON.ToJSON SourceProperty where
  toJSON SourceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Owner" JSON..= owner]
              (Prelude.catMaybes
                 [(JSON..=) "CustomPolicyDetails" Prelude.<$> customPolicyDetails,
                  (JSON..=) "SourceDetails" Prelude.<$> sourceDetails,
                  (JSON..=) "SourceIdentifier" Prelude.<$> sourceIdentifier])))
instance Property "CustomPolicyDetails" SourceProperty where
  type PropertyType "CustomPolicyDetails" SourceProperty = CustomPolicyDetailsProperty
  set newValue SourceProperty {..}
    = SourceProperty {customPolicyDetails = Prelude.pure newValue, ..}
instance Property "Owner" SourceProperty where
  type PropertyType "Owner" SourceProperty = Value Prelude.Text
  set newValue SourceProperty {..}
    = SourceProperty {owner = newValue, ..}
instance Property "SourceDetails" SourceProperty where
  type PropertyType "SourceDetails" SourceProperty = [SourceDetailProperty]
  set newValue SourceProperty {..}
    = SourceProperty {sourceDetails = Prelude.pure newValue, ..}
instance Property "SourceIdentifier" SourceProperty where
  type PropertyType "SourceIdentifier" SourceProperty = Value Prelude.Text
  set newValue SourceProperty {..}
    = SourceProperty {sourceIdentifier = Prelude.pure newValue, ..}
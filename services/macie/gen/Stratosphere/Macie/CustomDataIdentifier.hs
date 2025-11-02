module Stratosphere.Macie.CustomDataIdentifier (
        CustomDataIdentifier(..), mkCustomDataIdentifier
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data CustomDataIdentifier
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-macie-customdataidentifier.html>
    CustomDataIdentifier {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-macie-customdataidentifier.html#cfn-macie-customdataidentifier-description>
                          description :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-macie-customdataidentifier.html#cfn-macie-customdataidentifier-ignorewords>
                          ignoreWords :: (Prelude.Maybe (ValueList Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-macie-customdataidentifier.html#cfn-macie-customdataidentifier-keywords>
                          keywords :: (Prelude.Maybe (ValueList Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-macie-customdataidentifier.html#cfn-macie-customdataidentifier-maximummatchdistance>
                          maximumMatchDistance :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-macie-customdataidentifier.html#cfn-macie-customdataidentifier-name>
                          name :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-macie-customdataidentifier.html#cfn-macie-customdataidentifier-regex>
                          regex :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-macie-customdataidentifier.html#cfn-macie-customdataidentifier-tags>
                          tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomDataIdentifier ::
  Value Prelude.Text -> Value Prelude.Text -> CustomDataIdentifier
mkCustomDataIdentifier name regex
  = CustomDataIdentifier
      {haddock_workaround_ = (), name = name, regex = regex,
       description = Prelude.Nothing, ignoreWords = Prelude.Nothing,
       keywords = Prelude.Nothing, maximumMatchDistance = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties CustomDataIdentifier where
  toResourceProperties CustomDataIdentifier {..}
    = ResourceProperties
        {awsType = "AWS::Macie::CustomDataIdentifier",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Regex" JSON..= regex]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "IgnoreWords" Prelude.<$> ignoreWords,
                               (JSON..=) "Keywords" Prelude.<$> keywords,
                               (JSON..=) "MaximumMatchDistance" Prelude.<$> maximumMatchDistance,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON CustomDataIdentifier where
  toJSON CustomDataIdentifier {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Regex" JSON..= regex]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "IgnoreWords" Prelude.<$> ignoreWords,
                  (JSON..=) "Keywords" Prelude.<$> keywords,
                  (JSON..=) "MaximumMatchDistance" Prelude.<$> maximumMatchDistance,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" CustomDataIdentifier where
  type PropertyType "Description" CustomDataIdentifier = Value Prelude.Text
  set newValue CustomDataIdentifier {..}
    = CustomDataIdentifier {description = Prelude.pure newValue, ..}
instance Property "IgnoreWords" CustomDataIdentifier where
  type PropertyType "IgnoreWords" CustomDataIdentifier = ValueList Prelude.Text
  set newValue CustomDataIdentifier {..}
    = CustomDataIdentifier {ignoreWords = Prelude.pure newValue, ..}
instance Property "Keywords" CustomDataIdentifier where
  type PropertyType "Keywords" CustomDataIdentifier = ValueList Prelude.Text
  set newValue CustomDataIdentifier {..}
    = CustomDataIdentifier {keywords = Prelude.pure newValue, ..}
instance Property "MaximumMatchDistance" CustomDataIdentifier where
  type PropertyType "MaximumMatchDistance" CustomDataIdentifier = Value Prelude.Integer
  set newValue CustomDataIdentifier {..}
    = CustomDataIdentifier
        {maximumMatchDistance = Prelude.pure newValue, ..}
instance Property "Name" CustomDataIdentifier where
  type PropertyType "Name" CustomDataIdentifier = Value Prelude.Text
  set newValue CustomDataIdentifier {..}
    = CustomDataIdentifier {name = newValue, ..}
instance Property "Regex" CustomDataIdentifier where
  type PropertyType "Regex" CustomDataIdentifier = Value Prelude.Text
  set newValue CustomDataIdentifier {..}
    = CustomDataIdentifier {regex = newValue, ..}
instance Property "Tags" CustomDataIdentifier where
  type PropertyType "Tags" CustomDataIdentifier = [Tag]
  set newValue CustomDataIdentifier {..}
    = CustomDataIdentifier {tags = Prelude.pure newValue, ..}
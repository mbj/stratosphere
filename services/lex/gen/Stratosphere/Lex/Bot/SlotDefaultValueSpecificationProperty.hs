module Stratosphere.Lex.Bot.SlotDefaultValueSpecificationProperty (
        module Exports, SlotDefaultValueSpecificationProperty(..),
        mkSlotDefaultValueSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.SlotDefaultValueProperty as Exports
import Stratosphere.ResourceProperties
data SlotDefaultValueSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slotdefaultvaluespecification.html>
    SlotDefaultValueSpecificationProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slotdefaultvaluespecification.html#cfn-lex-bot-slotdefaultvaluespecification-defaultvaluelist>
                                           defaultValueList :: [SlotDefaultValueProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSlotDefaultValueSpecificationProperty ::
  [SlotDefaultValueProperty] -> SlotDefaultValueSpecificationProperty
mkSlotDefaultValueSpecificationProperty defaultValueList
  = SlotDefaultValueSpecificationProperty
      {haddock_workaround_ = (), defaultValueList = defaultValueList}
instance ToResourceProperties SlotDefaultValueSpecificationProperty where
  toResourceProperties SlotDefaultValueSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.SlotDefaultValueSpecification",
         supportsTags = Prelude.False,
         properties = ["DefaultValueList" JSON..= defaultValueList]}
instance JSON.ToJSON SlotDefaultValueSpecificationProperty where
  toJSON SlotDefaultValueSpecificationProperty {..}
    = JSON.object ["DefaultValueList" JSON..= defaultValueList]
instance Property "DefaultValueList" SlotDefaultValueSpecificationProperty where
  type PropertyType "DefaultValueList" SlotDefaultValueSpecificationProperty = [SlotDefaultValueProperty]
  set newValue SlotDefaultValueSpecificationProperty {..}
    = SlotDefaultValueSpecificationProperty
        {defaultValueList = newValue, ..}
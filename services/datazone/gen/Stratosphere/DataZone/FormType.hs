module Stratosphere.DataZone.FormType (
        module Exports, FormType(..), mkFormType
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataZone.FormType.ModelProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FormType
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-formtype.html>
    FormType {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-formtype.html#cfn-datazone-formtype-description>
              description :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-formtype.html#cfn-datazone-formtype-domainidentifier>
              domainIdentifier :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-formtype.html#cfn-datazone-formtype-model>
              model :: ModelProperty,
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-formtype.html#cfn-datazone-formtype-name>
              name :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-formtype.html#cfn-datazone-formtype-owningprojectidentifier>
              owningProjectIdentifier :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-formtype.html#cfn-datazone-formtype-status>
              status :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFormType ::
  Value Prelude.Text
  -> ModelProperty
     -> Value Prelude.Text -> Value Prelude.Text -> FormType
mkFormType domainIdentifier model name owningProjectIdentifier
  = FormType
      {haddock_workaround_ = (), domainIdentifier = domainIdentifier,
       model = model, name = name,
       owningProjectIdentifier = owningProjectIdentifier,
       description = Prelude.Nothing, status = Prelude.Nothing}
instance ToResourceProperties FormType where
  toResourceProperties FormType {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::FormType", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DomainIdentifier" JSON..= domainIdentifier,
                            "Model" JSON..= model, "Name" JSON..= name,
                            "OwningProjectIdentifier" JSON..= owningProjectIdentifier]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Status" Prelude.<$> status]))}
instance JSON.ToJSON FormType where
  toJSON FormType {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DomainIdentifier" JSON..= domainIdentifier,
               "Model" JSON..= model, "Name" JSON..= name,
               "OwningProjectIdentifier" JSON..= owningProjectIdentifier]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Status" Prelude.<$> status])))
instance Property "Description" FormType where
  type PropertyType "Description" FormType = Value Prelude.Text
  set newValue FormType {..}
    = FormType {description = Prelude.pure newValue, ..}
instance Property "DomainIdentifier" FormType where
  type PropertyType "DomainIdentifier" FormType = Value Prelude.Text
  set newValue FormType {..}
    = FormType {domainIdentifier = newValue, ..}
instance Property "Model" FormType where
  type PropertyType "Model" FormType = ModelProperty
  set newValue FormType {..} = FormType {model = newValue, ..}
instance Property "Name" FormType where
  type PropertyType "Name" FormType = Value Prelude.Text
  set newValue FormType {..} = FormType {name = newValue, ..}
instance Property "OwningProjectIdentifier" FormType where
  type PropertyType "OwningProjectIdentifier" FormType = Value Prelude.Text
  set newValue FormType {..}
    = FormType {owningProjectIdentifier = newValue, ..}
instance Property "Status" FormType where
  type PropertyType "Status" FormType = Value Prelude.Text
  set newValue FormType {..}
    = FormType {status = Prelude.pure newValue, ..}
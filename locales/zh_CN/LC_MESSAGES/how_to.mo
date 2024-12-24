��    +      t              �  �   �  �     �   v  $   E  1   j  )   �  1  �  #   �  �     �   �  <   C  )   �  %   �     �  ?   �     0	  0   M	  )   ~	     �	  X   �	  J   
  �   Z
  x   #  �   �  N   t  �   �  �   n  i   (  �   �  �   |    
  f   "    �  M   �  m   �  �   G  �   �    �  #     �   $  �   �     �  �  �  �      �   �  �   �  !   �  -   �     �           y   ,  �   �  )   *   !   T   !   v      �   E   �      �   '   !     ;!     W!  H   d!  E   �!  �   �!  h   �"  �   #  E   �#  �   $  �   �$  W   q%  �   �%  l   y&  �   �&  W   �'  �   ;(  <   )  [   X)  �   �)  �   _*  �   &+  �  �+  �   �-  �   y.     /   As another example, you could remove ``undoc-members`` from :confval:`autoapi_options` and only add docstrings for the modules and other entities that you want to be documented. AutoAPI is capable of the same thing. To enable this behaviour, load the :mod:`sphinx.ext.autodoc.typehints` (or :mod:`sphinx.ext.autodoc`) extension in Sphinx's ``conf.py`` file and set :confval:`autodoc_typehints` to ``description`` as normal:: AutoAPI treats the definition of `__all__ <https://docs.python.org/tutorial/modules.html#importing-from-a-package>`_ as the specification of what objects are public in a module or package, and which aren't. Configure :confval:`autoapi_options` Connect to the :event:`autoapi-skip-member` event Customise the API Documentation Templates Finally, you can configure what gets rendered by customising the templates. This is a rather heavy handed approach, so it should only be necessary when the other options do not give you the control the you need. You can learn how to customise the templates in the next section: :ref:`customise-templates`. For example the following function: For example you could remove ``private-members`` from :confval:`autoapi_options` and hide your object definitions in private modules. For example, to document only packages -- in other words, to not document submodules -- you could implement an event handler in your conf.py like the following. How to Configure Where Documentation Appears in the TOC Tree How to Customise Layout Through Templates How to Customise What Gets Documented How to Customise the Index Page How to Include Type Annotations as Types in Rendered Docstrings How to Remove the Index Page How to Transition to Autodoc-Style Documentation How to Transition to Manual Documentation How-to Guides However there are multiple options available for controlling what AutoAPI will document. In the following example, only ``func_a()`` and ``A`` would be documented. Note that ``autoapi/`` is the default location of documentation, as configured by :confval:`autoapi_root`. If you change :confval:`autoapi_root`, then the entry that you need to add would change also. Once you have built your documentation with this option turned on, you can disable AutoAPI altogether from your project. Once you have written some documentation with the :ref:`autodoc-directives`, turning the automatic documentation generation off is as easy as disabling the :confval:`autoapi_generate_api_docs` configuration option:: See :confval:`autoapi_options` for more information on how to use this option. Since v3.0, :mod:`sphinx` has included an :mod:`sphinx.ext.autodoc.typehints` extension that is capable of rendering type annotations as parameter types and return types. Templates control a lot of behaviour, so customising templates can mean that you lose out on new functionality until you update your customised templates after a new release of AutoAPI. The :confval:`autoapi_options` configuration value gives some high level control over what is documented. The :confval:`autoapi_root` configuration option defines where generated documentation is output. To change where documentation is output, simply change this option to another directory relative to the documentation source directory: The :event:`autoapi-skip-member` event is emitted whenever a template has to decide whether a member should be included in the documentation. The index page that AutoAPI creates is generated using a template. So customising the index page follows the same steps as customising a template. Simply edit the ``autoapi/templates/index.rst`` template with the same steps as :ref:`customising a template <customise-templates>`. The one exception to this rule is that any object imported into a module is not documented by default. These guides will take you through the steps to perform common actions or solve common problems in AutoAPI. They will assume that you already have a Sphinx project with AutoAPI set up already. If you don't know how to do this then read the :doc:`tutorials`. This feature is experimental and may change or be removed in future versions. To remove the index page altogether, turn off the :confval:`autoapi_add_toctree_entry` configuration option:: To start writing API documentation yourself, you can get AutoAPI to keep its generated files around as a base to start from using the :confval:`autoapi_keep_files` option:: Unless :confval:`autodoc_typehints` is set to ``None``, the type annotations of overloads will always be output in the signature and never merged into the description because it is impossible to represent all overloads as a list of parameters. With the default settings, AutoAPI will document everything that is publicly accessible through the actual package when loaded in Python. For example if a function is imported from a submodule into a package then that function is documented in both the submodule and the package. You can customise the look of the documentation that AutoAPI generates by changing the Jinja2 templates that it uses. The default templates live in the ``autoapi/templates`` directory of the AutoAPI package. Simply copy whichever templates you want to customise to a local directory and edit them. To get AutoAPI to use these templates, point the :confval:`autoapi_template_dir` configuration option to your directory. It can be absolute, or relative to the root of the documentation source directory (ie the directory passed to ``sphinx-build``). You will then need to include the generated documentation in the toctree yourself. For example if you were generating documentation for a package called "example", you would add the following toctree entry:: Your template directory must to follow the same layout as the default templates. For example, to override the Python class and module templates: would be rendered as: Project-Id-Version: Sphinx AutoAPI 3.3
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2024-12-24 14:58+0800
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_CN
Language-Team: zh_CN <LL@li.org>
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.16.0
 例如，您可以从 :confval:`autoapi_options` 中删除 ``undoc-members`` 并只为您想要记录的模块和其他实体添加文档字符串。 AutoAPI 能够执行相同的操作。要启用此行为，请在 Sphinx 的 ``conf.py`` 文件中加载 :mod:`sphinx.ext.autodoc.typehints` （或 :mod:`sphinx.ext.autodoc`）扩展，并将 :confval:`autodoc_typehints` 设置为 ``description`` 正常:: AutoAPI 将 `__all__ <https://docs.python.org/tutorial/modules.html#importing-from-a-package>`_ 的定义（参见 Python 官方文档关于从包中导入的部分）视为模块或包中哪些对象是公开的、哪些不是的规范。 配置 :confval:`autoapi_options` 连接到 :event:`autoapi-skip-member` 事件 定制 API 文档模板 最后，您可以通过自定义模板来配置渲染的内容。这是一种较为强硬的方法，因此只有在其他选项无法满足您的控制需求时才需要使用。您可以在下一节中学习如何自定义模板：:ref:`customise-templates`。 例如以下函数： 例如，您可以从 :confval:`autoapi_options` 中删除 ``private-members`` 并隐藏私有模块中的对象定义。 例如，要仅记录包 -- 换句话说，不记录子模块 -- 您可以在 conf.py 中实现事件处理程序，如下所示。 如何配置文档在 TOC 树中的位置 如何通过模板自定义布局 如何自定义要记录的内容 如何自定义索引页面 如何将类型注释作为类型在渲染的文档字符串中显示 如何删除索引页面 如何过渡到 Autodoc 风格的文档 如何过渡到手动文档 操作指南 然而，有多种选项可用于控制 AutoAPI 将记录什么内容。 在下面的示例中，只有 ``func_a()`` 和 ``A`` 会被记录。 注意，``autoapi/`` 是默认的文档输出位置，由 :confval:`autoapi_root` 配置选项定义。如果您更改 :confval:`autoapi_root`，则需要添加的条目也会更改。 一旦您使用此选项打开了文档的构建，您就可以从您的项目中完全禁用 AutoAPI。 一旦您已经使用 :ref:`autodoc-directives` 编写了一些文档，将自动文档生成关闭就很简单了。只需禁用 :confval:`autoapi_generate_api_docs` 配置选项即可： 配置选项的详细信息，请参阅 :confval:`autoapi_options`。 从 v3.0 开始，:mod:`sphinx` 包括了一个 :mod:`sphinx.ext.autodoc.typehints` 扩展，它能够将类型注释作为参数类型和返回类型进行渲染。 模板控制了很多行为，因此自定义模板可能意味着您在更新自定义模板后失去了新功能，直到您使用与 AutoAPI 新版本对应的模板为止。 :confval:`autoapi_options` 配置值提供了一些对文档内容的高层次控制。 配置选项 :confval:`autoapi_root` 定义了生成文档的输出位置。要更改文档的位置，只需将此选项更改为相对于文档源目录的另一个目录： 每当模板决定是否将成员包含在文档中时，都会发出 :event:`autoapi-skip-member` 事件。 AutoAPI 创建的索引页面是使用模板生成的。因此，自定义索引页面的步骤与自定义模板相同。只需按照与 :ref:`自定义模板 <customise-templates>` 相同的步骤编辑 ``autoapi/templates/index.rst`` 模板即可。 例外情况是，任何导入到模块中的对象默认情况下都不会被记录。 这些指南将引导您完成在AutoAPI中执行常见操作或解决常见问题的步骤。它们假设您已经有设置了AutoAPI的Sphinx项目。如果您不知道如何做到这一点，请阅读 :doc:`tutorials`。 此功能是实验性的，未来可能会更改或移除。 要完全删除索引页面，请关闭 :confval:`autoapi_add_toctree_entry` 配置选项:: 要从 AutoAPI 生成的文件开始编写自己的 API 文档，您可以使用 :confval:`autoapi_keep_files` 配置选项将其生成的文件保留为基础来开始:: 除非 :confval:`autodoc_typehints` 设置为 ``None``，否则重载的类型注释将始终在签名中输出，并且不会合并到描述中，因为无法将所有重载表示为参数列表。 使用默认设置时，AutoAPI 会记录在 Python 中加载时通过实际包公开访问的所有内容。例如，如果函数从子模块导入到包中，那么该函数将在子模块和包中都被记录。 您可以通过更改 AutoAPI 使用的 Jinja2 模板来自定义文档的外观。默认情况下，这些模板位于 AutoAPI 包中的 ``autoapi/templates`` 目录中。只需将您要自定义的模板复制到本地目录并进行编辑即可。要让 AutoAPI 使用这些模板，请将 :confval:`autoapi_template_dir` 配置选项指向您的目录。它可以是绝对的，也可以是相对于文档源目录（即传递给 ``sphinx-build`` 的目录）的相对路径。 您将需要在 toctree 中包含生成的文档。例如，如果您正在为名为“example”的包生成文档，您将添加以下 toctree 条目:: 要覆盖 Python 类和模块模板，请将它们复制到本地目录并进行编辑。例如，要覆盖 Python 类和模块模板： 会被渲染为： 
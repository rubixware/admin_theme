# AdminTheme

A new style spin for active admin

## Installation

### For Sprockets users

- Add this to your Gemfile:

```ruby
gem 'admin_theme'
```

- Run `bundle install`.

- Add this line to the file `config/initializers/active_admin.rb`

```ruby
meta_tags_options = { viewport: 'width=device-width, initial-scale=1' }
config.meta_tags = meta_tags_options
config.meta_tags_for_logged_out_pages = meta_tags_options
```

### For webpacker / jsbundling-rails or other JS-based asset solutions

Install the needed assets with npm or yarn:

```bash
yarn add arctic_admin @fortawesome/fontawesome-free
```

## Use with Sprockets

### 1a - CSS

In your `active_admin.css`, include the css file:

```css
/*
 *= require admin_theme/base
 */
```

**Remove the line `*= require active_admin/base`**

Then restart your webserver if it was previously running.

### 1b - Sass Support

:exclamation: **Remove the line `@import "active_admin/base"`**

If you prefer [SCSS](http://sass-lang.com/documentation/file.SASS_REFERENCE.html), add this to your
`active_admin.scss` file:

```scss
@import "admin_theme/base";
```

If you use the
[Sass indented syntax](http://sass-lang.com/docs/yardoc/file.INDENTED_SYNTAX.html),
add this to your `active_admin.sass` file:

```sass
@import admin_theme/base
```

### 2 - JS

In your `active_admin.js`, include the js file:

```js
//= require admin_theme/base
```

:exclamation:  **Remove the line `//= require active_admin/base`**

## Use with webpacker

### 1 - CSS

In your `app/javascript/stylesheets/active_admin.scss`, add the line:

```scss
@import '~admin_theme/src/scss/main';
```

Remove:

```scss
@import "~@activeadmin/activeadmin/src/scss/mixins";
@import "~@activeadmin/activeadmin/src/scss/base";
```

### 2 - JS

Search for `app/javascript/packs/active_admin.js` in your rails project and add the following lines:

```js
import "@fortawesome/fontawesome-free/css/all.css";
import 'admin_theme'
```


### Customization

For this, you need to use SASS to customize the theming.

Right now you can change the primary color of the theme by placing the following variable in your `active_admin.scss` file:

```scss
$primary-color: #2dbb43;

@import "~admin_theme/src/scss/main";
```

If you use the
[Sass indented syntax](http://sass-lang.com/docs/yardoc/file.INDENTED_SYNTAX.html),
add this to your `active_admin.sass` file:

```sass
$primary-color: #2dbb43

@import ~admin_theme/src/scss/main
```

Then restart your webserver if it was previously running.